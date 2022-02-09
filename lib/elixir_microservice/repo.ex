defmodule ElixirMicroservice.Repo do
  use Ecto.Repo,
    otp_app: :elixir_microservice,
    adapter: Ecto.Adapters.Postgres
end
