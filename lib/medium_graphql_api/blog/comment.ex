defmodule MediumGraphqlApi.Blog.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :context, :string
    field :user_id, :id
    field :post_id, :id

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:context])
    |> validate_required([:context])
  end
end
