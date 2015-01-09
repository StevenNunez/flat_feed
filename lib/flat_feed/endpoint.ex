defmodule FlatFeed.Endpoint do
  use Phoenix.Endpoint, otp_app: :flat_feed

  plug Plug.Static,
    at: "/", from: :flat_feed

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_flat_feed_key",
    signing_salt: "SLasrvYV",
    encryption_salt: "tMaAbkAX"

  plug :router, FlatFeed.Router
end
