# Для веб сервера нужен маршрутизатор, место ему именно тут.
defmodule KVstore.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/", do: send_resp(conn, 200, "Welcome")
  match _, do: send_resp(conn, 404, "Oops!")
end
