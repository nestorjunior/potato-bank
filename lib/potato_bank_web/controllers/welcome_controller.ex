defmodule PotatoBankWeb.WelcomeController do
  use PotatoBankWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(200)
    |> json(%{message: "Welcome to Potato Bank®"})
  end
end
