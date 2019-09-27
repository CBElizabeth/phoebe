defmodule phoebeWeb.Layouts.View do
  use Phoenix.View, root: "lib/phoebe_web", path: "layouts/templates", namespace: phoebeWeb
  use Phoenix.HTML

  import Phoenix.Controller, only: [get_flash: 2]

  alias phoebeWeb.Router.Helpers, as: Routes
end
