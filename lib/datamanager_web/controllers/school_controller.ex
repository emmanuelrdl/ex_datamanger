require IEx
defmodule DatamanagerWeb.SchoolController do
 use DatamanagerWeb, :controller
 import PhoenixGon.Controller

  def index(conn, _params) do
    uri = "https://data.iledefrance.fr/api/records/1.0/search/?dataset=annuaire-de-leducation&rows=100"
    response = HTTPotion.get uri, [timeout: 10_000]
    {:ok, data } = response.body |> Poison.decode
    conn = put_gon(conn, schools: data)
    render conn, "index.html"
  end
end
