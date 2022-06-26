defmodule Makima.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Makima.Repo,
      # Start the Telemetry supervisor
      MakimaWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Makima.PubSub},
      # Start the Endpoint (http/https)
      MakimaWeb.Endpoint,
      # Start a worker by calling: Makima.Worker.start_link(arg)
      # {Makima.Worker, arg}
      Makima.Vault
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Makima.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MakimaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
