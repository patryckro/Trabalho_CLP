defmodule Uchat.Repo do
  use Ecto.Repo,
    otp_app: :uchat,
    adapter: Ecto.Adapters.Postgres
end
