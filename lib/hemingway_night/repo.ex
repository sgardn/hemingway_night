defmodule HemingwayNight.Repo do
  use Ecto.Repo,
    otp_app: :hemingway_night,
    adapter: Ecto.Adapters.Postgres
end
