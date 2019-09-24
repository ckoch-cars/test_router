# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :test_router,
  ecto_repos: [TestRouter.Repo]

# Configures the endpoint
config :test_router, TestRouterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "twB0NjsERcI/aX75zChm1dmCjrlP9b24JUzW+eDzxomJqnyTCaxxIF1ukvQrBynQ",
  render_errors: [view: TestRouterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TestRouter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
