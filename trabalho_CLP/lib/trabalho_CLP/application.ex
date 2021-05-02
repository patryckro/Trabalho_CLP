defmodule Trabalho_CLP.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Trabalho_CLP.Repo,
      # Start the Telemetry supervisor
      Trabalho_CLPWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Trabalho_CLP.PubSub},
      # Start the Endpoint (http/https)
      Trabalho_CLPWeb.Endpoint
      # Start a worker by calling: Trabalho_CLP.Worker.start_link(arg)
      # {Trabalho_CLP.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Trabalho_CLP.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Trabalho_CLPWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
