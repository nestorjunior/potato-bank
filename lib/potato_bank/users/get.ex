defmodule PotatoBank.Users.Get do
  alias PotatoBank.Users.User
  alias PotatoBank.Repo

  def call(id) do
   case Repo.get(User, id) do
    nil -> {:error, :not_found}
    user -> {:ok, user}
   end
  end
end
