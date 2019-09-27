defmodule phoebeWeb.Home.ControllerTest do
  use phoebeWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "The system looks OK."
  end
end
