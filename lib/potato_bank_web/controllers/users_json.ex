defmodule PotatoBankWeb.UsersJSON do
  def create(%{user: user}) do
    %{
      message: "Create user success!",
      id: user.id,
      cep: user.cep,
      email: user.email
    }
  end
end
