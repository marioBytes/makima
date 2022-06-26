defmodule Makima.EncryptedBinary do
  use Cloak.Ecto.Binary, vault: Makima.Vault
end
