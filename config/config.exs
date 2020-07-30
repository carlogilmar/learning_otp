# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :learning_otp,
  ecto_repos: [LearningOtp.Repo]

# Configures the endpoint
config :learning_otp, LearningOtpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hF5c5F93BT2QRa1ldha0MQdYM2OrfU6nSQUQxXJoDVf4LzckFZ0hL6K+hga3Wik/",
  render_errors: [view: LearningOtpWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LearningOtp.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "YOlmzaGV"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
