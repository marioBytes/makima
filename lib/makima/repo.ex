defmodule Makima.Repo do
  use Ecto.Repo,
    otp_app: :makima,
    adapter: Ecto.Adapters.Postgres
end
