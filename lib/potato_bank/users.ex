defmodule PotatoBank.Users do
  alias PotatoBank.Users.Create
  alias PotatoBank.Users.Get
  alias PotatoBank.Users.Update
  alias PotatoBank.Users.Delete

  defdelegate create(params), to: Create, as: :call
  defdelegate get(id), to: Get, as: :call
  defdelegate update(params), to: Update, as: :call
  defdelegate delete(id), to: Delete, as: :call
end
