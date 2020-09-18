defmodule Ft.Repo do
  use Ecto.Repo,
    otp_app: :ft,
    adapter: Ecto.Adapters.Postgres
end
