import Config

version = Mix.Project.config()[:version]

config :phoebe,
  ecto_repos: [phoebe.Repo],
  version: version

config :phoenix, :json_library, Jason

config :phoebe, phoebeWeb.Endpoint,
  pubsub: [name: phoebe.PubSub, adapter: Phoenix.PubSub.PG2],
  render_errors: [view: phoebeWeb.Errors.View, accepts: ~w(html json)]

config :phoebe, phoebe.Repo, start_apps_before_migration: [:ssl]

config :phoebe, Corsica, allow_headers: :all

config :phoebe, phoebe.Gettext, default_locale: "en"

config :phoebe, phoebeWeb.ContentSecurityPolicy, allow_unsafe_scripts: false

config :sentry,
  included_environments: ~w(prod)a,
  root_source_code_path: File.cwd!(),
  release: version

# Import environment configuration
import_config "#{Mix.env()}.exs"
