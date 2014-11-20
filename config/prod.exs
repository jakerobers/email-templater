use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, Email.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "6paGpZmp1TrQfs6qakX6C5WUq80/mSM8KdwLDHMfwoDq3jr7MQzjfd+KJInhfz7YXF4+XAZnW76KdD5C/5dlUw=="

config :logger, :console,
  level: :info
