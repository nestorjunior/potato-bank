defmodule PotatoBank.Users do
  alias PotatoBank.Users.Create

  defdelegate create(params), to: Create, as: :call
end
