defmodule DatamanagerWeb.PibManager do

  def load_country_infos(k) do
    if (k |> Enum.at(2) == "United States") do
      Countriex.get_by(:name, "United States of America")
      |> Map.put(:pib, k |> Enum.at(-1))
    else
      if Countriex.get_by(:name, k |> Enum.at(2)) do
        Countriex.get_by(:name, k |> Enum.at(2)) |> Map.put(:pib, k |> Enum.at(-1))
      end
    end
  end

  def get_countries do
    file_path = Path.join(:code.priv_dir(:datamanager), "static/pib.csv")
    File.stream!(file_path)
    |> CSV.decode
    |> Enum.map(fn k -> k |> elem(1) end)
    |> Enum.drop(1)
    |> Enum.map(fn k -> load_country_infos(k) end)
    |> Enum.reject(&is_nil/1)
  end


end
