defmodule PotatoBankWeb.FallbackController do
  use PotatoBankWeb, :controller

  def call(conn, {:error, not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(json: PotatoBankWeb.ErrorJSON)
    |> render(:error, status: not_found)
  end

  def call(conn, {:error, :bad_request}) do
    conn
    |> put_status(:bad_request)
    |> put_view(json: PotatoBankWeb.ErrorJSON)
    |> render(:error, status: :bad_request)
  end

   def call(conn, {:error, changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(json: PotatoBankWeb.ErrorJSON)
    |> render(:error, changeset: changeset)
  end

end
