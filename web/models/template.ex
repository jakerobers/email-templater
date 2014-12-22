defmodule Email.Template do
  use Ecto.Model

  schema "template" do
    field :id, :integer
    field :creator_id, :integer
    field :email_content
    field :title
    field :description
    field :tags, {:array, :string}
    field :date_added, :date
    field :date_modified, :date
  end
end
