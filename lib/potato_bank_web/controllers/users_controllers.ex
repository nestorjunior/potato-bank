defmodule PotatoBankWeb.UsersController do
  use PotatoBankWeb, :controller
  alias PotatoBank.Users.Create

  def create(conn, params) do
    # conn
    # |> put_status(200)
    # |> json(%{message: "Welcome to Potato Bank®"})
    params
    |> Create.call()
    |> handle_response(conn)
  end

  defp handle_response({:ok, user}, conn) do
    conn
    |> put_status(:created)
    |> render(:create, user: user)
  end

  # defp handle_response({:error, _changeset} = error, conn) do
  #   conn
  #   |> put_status(:bad_request)
  #   |> render("error.json", error: error)
  # end

end
