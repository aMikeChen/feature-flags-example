# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ft,
  ecto_repos: [Ft.Repo]

# Configures the endpoint
config :ft, FtWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XZiZHOZkPQ6Iu0Hu1FLYf3b92YO1piAZExmDdyjYUWWmtiWxJ2t6WlglHsA85L4s",
  render_errors: [view: FtWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Ft.PubSub,
  live_view: [signing_salt: "BkD7W2E/"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
