require IEx
defmodule DatamanagerWeb.WorldController do
 use DatamanagerWeb, :controller
 import PhoenixGon.Controller
 import DatamanagerWeb.PibManager

  def index(conn, _params) do
    countries = get_countries
    conn      = put_gon(conn, countries: countries)
    render conn, "index.html"
  end



end
