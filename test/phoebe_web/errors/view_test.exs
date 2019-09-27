defmodule phoebeWeb.Errors.ViewTest do
  use phoebeWeb.ConnCase, async: true

  import Phoenix.View, only: [render_to_string: 3]

  test "renders 404.html" do
    assert render_to_string(phoebeWeb.Errors.View, "404.html", []) == "Not Found"
  end

  test "render 500.html" do
    assert render_to_string(phoebeWeb.Errors.View, "500.html", []) == "Internal Server Error"
  end

  test "render any other" do
    assert render_to_string(phoebeWeb.Errors.View, "505.html", []) == "HTTP Version Not Supported"
  end
end
