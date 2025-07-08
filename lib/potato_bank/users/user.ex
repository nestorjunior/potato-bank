defmodule PotatoBank.Users.User do
    use Ecto.Schema
    import Ecto.Changeset

    schema "users" do
      field :name, :string
      field :password_hash, :string
      field :email, :string
      field :cep, :string

      timestamps()
    end

end
