# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cms_elixir,
  ecto_repos: [CmsElixir.Repo]

# Configures the endpoint
config :cms_elixir, CmsElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "f8o2kC6UNB3dcqNynvDMxh/52pX8V0QAhUekNsowtKNSmjmcGnIGXUwVJwaxLxc9",
  render_errors: [view: CmsElixirWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CmsElixir.PubSub,
  live_view: [signing_salt: "7U/geUBZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"


config :exq,
  name: Exq,
  host: "127.0.0.1",
  port: 6379,
  namespace: "exq",
  concurrency: 500,
  queues: ["default"]
