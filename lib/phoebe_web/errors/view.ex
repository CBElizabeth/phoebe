defmodule phoebeWeb.Errors.View do
  use Phoenix.View, root: "lib/phoebe_web", path: "errors/templates", namespace: phoebeWeb

  def template_not_found(template, _assigns) do
    Phoenix.Controller.status_message_from_template(template)
  end
end
