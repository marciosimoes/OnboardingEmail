defmodule ApiEmail.Repo do
  use Ecto.Repo,
    otp_app: :api_email,
    adapter: Ecto.Adapters.Postgres
end
