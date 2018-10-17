defmodule CwsWeb.MainController do
  use CwsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def new(conn, _) do

  end

  def show(conn, %{"id" => device_id}) do

  end

end
