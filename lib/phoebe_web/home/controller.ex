defmodule phoebeWeb.Home.Controller do
  use Phoenix.Controller

  import phoebe.Gettext

  plug(:put_view, phoebeWeb.Home.View)

  @spec index(Plug.Conn.t(), map) :: Plug.Conn.t()
  def index(conn, _) do
    render(conn, "index.html", health: dgettext("health", "ok"))
  end
end
