defmodule DatamanagerWeb.Router do
  use DatamanagerWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DatamanagerWeb do
    pipe_through :browser # Use the default browser stack
    get "/schools", SchoolController, :index
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", DatamanagerWeb do
  #   pipe_through :api
  # end
end
