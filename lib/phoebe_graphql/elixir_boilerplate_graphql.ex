defmodule phoebeGraphQL do
  def document_providers(_) do
    [Absinthe.Plug.DocumentProvider.Default, phoebeGraphQL.CompiledQueries]
  end
end
