defmodule FlatFeed.Api.HomeController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    messages = [
      %{
        id: "1",
        to: "Bob",
        from: "Steve",
        text: "Hi",
        unread: true
        },%{
          id: "2",
          to: "Blake",
          from: "Steve",
          text: "Hey",
          unread: true
        }
      ]
      json conn, messages
    end
  end
