defmodule PotatoBank.Repo do
  use Ecto.Repo,
    otp_app: :potato_bank,
    adapter: Ecto.Adapters.Postgres
end
