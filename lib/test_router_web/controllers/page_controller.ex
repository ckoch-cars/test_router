defmodule TestRouterWeb.PageController do
  use TestRouterWeb, :controller

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, params) do
    IO.inspect(params)
    render(conn, "index.html")
  end

  def show(conn, params) do
    IO.inspect(params)
    render(conn, "index.html")
  end
end
