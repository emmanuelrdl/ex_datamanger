require IEx
defmodule DatamanagerWeb.SchoolController do
 use DatamanagerWeb, :controller
 import PhoenixGon.Controller

  def index(conn, _params) do
    elastic_url = "http://localhost:9200"
    {:ok, data} = Elastix.Search.search(elastic_url, "schools", ["school"], %{ size: 10000})
    schools  =  data.body["hits"] 
    conn = put_gon(conn, schools: schools)
    render conn, "index.html"
  end


end
