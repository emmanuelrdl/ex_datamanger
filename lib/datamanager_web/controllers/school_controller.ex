defmodule DatamanagerWeb.SchoolController do
 use DatamanagerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
