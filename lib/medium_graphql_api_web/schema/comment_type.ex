defmodule MediumGraphqlApiWeb.Schema.Types.CommentType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: MediumGraphqlApi.Repo

  object :comment_type do
    field(:id, :id)
    field(:content, :string)
  end
end