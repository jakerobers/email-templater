defmodule Email.User do
  use Ecto.Model

  schema "user" do
    field :user_id, :integer
    field :email
    field :username
    field :password
    field :date_registered, :date
    field :date_modified, :date
  end
end
