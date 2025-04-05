defmodule HemingwayNight.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      HemingwayNightWeb.Telemetry,
      HemingwayNight.Repo,
      {DNSCluster, query: Application.get_env(:hemingway_night, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: HemingwayNight.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: HemingwayNight.Finch},
      # Start a worker by calling: HemingwayNight.Worker.start_link(arg)
      # {HemingwayNight.Worker, arg},
      # Start to serve requests, typically the last entry
      HemingwayNightWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HemingwayNight.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    HemingwayNightWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
