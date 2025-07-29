defmodule PotatoBank.Users.Create do
  alias PotatoBank.Users.User
  alias PotatoBank.Repo
  alias PotatoBank.ViaCep.Client, as: ViaCepClient

  def call(%{"cep" => cep} = params) do
    with {:ok, _result} <- ViaCepClient.call(cep) do
      params
      |> User.changeset()
      |> Repo.insert()
    end
  end
end
