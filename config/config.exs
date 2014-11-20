# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, Email.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  https: false,
  secret_key_base: "6paGpZmp1TrQfs6qakX6C5WUq80/mSM8KdwLDHMfwoDq3jr7MQzjfd+KJInhfz7YXF4+XAZnW76KdD5C/5dlUw==",
  catch_errors: true,
  debug_errors: false,
  error_controller: Email.PageController

# Session configuration
config :phoenix, Email.Router,
  session: [store: :cookie,
            key: "_email_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
