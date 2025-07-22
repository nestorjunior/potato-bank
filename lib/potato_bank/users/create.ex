defmodule PotatoBank.Users.Create do
  alias PotatoBank.Users.User
  alias PotatoBank.Repo

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
