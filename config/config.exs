# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :api_email,
  ecto_repos: [ApiEmail.Repo]

# Configures the endpoint
config :api_email, ApiEmailWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vCS5NP5MTETqUm4PEJbE8dR8PYnVtvL2SllZvokiAOpjUyEKPP41C8VX4WTSdt5o",
  render_errors: [view: ApiEmailWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ApiEmail.PubSub,
  live_view: [signing_salt: "cb3noRX2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :api_email, ApiEmailWeb.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "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"
