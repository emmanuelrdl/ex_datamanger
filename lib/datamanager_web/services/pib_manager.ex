defmodule DatamanagerWeb.PibManager do

  def get_countries do
    rows = File.stream!("priv/static/pib.csv") |> CSV.decode |>  Enum.map(fn k -> k |> elem(1) end) |> Enum.drop(1)
    countries = Enum.map rows, fn k ->
      pib =  k |> Enum.at(-1)
      country = nil
      if (k |> Enum.at(2) == "United States") do
        country = Countriex.get_by(:name, "United States of America")
      else
        country = Countriex.get_by(:name, k |> Enum.at(2))
      end
      if country do
        country |> Map.put(:pib, pib)
      end
    end
  end

end
