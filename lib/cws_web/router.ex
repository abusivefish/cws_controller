defmodule CwsWeb.Router do
  use CwsWeb, :router

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

  scope "/", CwsWeb do
    pipe_through :browser # Use the default browser stack

    get "/", MainController, :index
  end

  scope "/users", CwsWeb do
    pipe_through :browser
    resources "/", UserController
  end

  scope "/devices", CwsWeb do
    pipe_through :browser
    resources "/", DeviceController
  end

  scope "/analytics", CwsWeb do
    pipe_through :browser
    resources "/", StatsController
  end

  # Other scopes may use custom stacks.
  # scope "/api", CwsWeb do
  #   pipe_through :api
  # end
end
