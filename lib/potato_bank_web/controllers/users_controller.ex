defmodule PotatoBankWeb.UsersController do
  use PotatoBankWeb, :controller

  alias PotatoBank.Users
  alias Users.User

  action_fallback PotatoBankWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Users.create(params) do
      conn
      |> put_status(:created)
      |> render(:create, user: user)
    end
  end

end
