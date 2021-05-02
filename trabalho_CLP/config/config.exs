# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :trabalho_CLP,
  ecto_repos: [Trabalho_CLP.Repo]

# Configures the endpoint
config :trabalho_CLP, Trabalho_CLPWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2ARji0ycGk9hMWMf1Lbym2v+nqW71neHlt1SF8o2k+Guc+IthNS4zGLLh0kkm+X1",
  render_errors: [view: Trabalho_CLPWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Trabalho_CLP.PubSub,
  live_view: [signing_salt: "E62h4qqj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
