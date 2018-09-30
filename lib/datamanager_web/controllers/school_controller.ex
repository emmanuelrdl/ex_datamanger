require IEx
defmodule DatamanagerWeb.SchoolController do
 use DatamanagerWeb, :controller
 import PhoenixGon.Controller

  def index(conn, _params) do
    {:ok, data} = File.read("schools.json")
    {:ok, schools}  = data |> Poison.decode
    conn = put_gon(conn, schools: schools)
    render conn, "index.html"
  end

  def load_data do
    uri = "https://data.iledefrance.fr/api/records/1.0/search/?dataset=annuaire-de-leducation&rows=10000"
    response = HTTPotion.get uri, [timeout: 20_000]
    {:ok, data } = response.body |> Poison.decode
    File.write("schools.json", Poison.encode!(data), [:binary])
  end
end
