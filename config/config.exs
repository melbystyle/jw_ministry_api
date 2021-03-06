# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :jw_ministry_api,
  ecto_repos: [JwMinistryApi.Repo]

# Configures the endpoint
config :jw_ministry_api, JwMinistryApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lOYM9wK/eaw70vHXPRSuyjA1j6eu9Fb0YrVaEkUzZGAUAv5B65jVeu+flTu6lD4f",
  render_errors: [view: JwMinistryApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: JwMinistryApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
