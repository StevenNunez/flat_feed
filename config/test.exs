use Mix.Config

config :flat_feed, FlatFeed.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
