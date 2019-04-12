# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :empexlogo, EmpexlogoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kYQWtNbU7y8K+uJvyR2IugY4R3apJ15tY6CBvCXxLgmgF5CUCjEM+EFjgJzJCvop",
  render_errors: [view: EmpexlogoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Empexlogo.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "H2Rns2K+TdITCEJLF2puLivDS9aGmgfKIqJkOUmFaqRUQCSNzcCpGYtDnpQ6VdeZ"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Enable LiveView
config :phoenix, template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
