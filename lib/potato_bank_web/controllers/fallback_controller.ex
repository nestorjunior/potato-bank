defmodule PotatoBankWeb.FallbackController do
  use PotatoBankWeb, :controller

  def call(conn, {:error, changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(json: PotatoBankWeb.ErrorJSON)
    |> render(:error, changeset: changeset)
  end

end
