require IEx
defmodule DatamanagerWeb.EsManager do

  def load_data do
    elastic_url = "http://localhost:9200"
    uri = "https://data.iledefrance.fr/api/records/1.0/search/?dataset=annuaire-de-leducation&rows=1000"
    response = HTTPotion.get uri, [timeout: 20_000]
    {:ok, res } = response.body |> Poison.decode
    schools = res["records"]
    Enum.each  schools, fn  school ->
      Elastix.Document.index(elastic_url, "schools", "school", school["recordid"], school)
    end
    IO.puts "schools have been imported to ES"
  end


end
