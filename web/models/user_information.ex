defmodule Email.UserInformation do
  use Ecto.Model

    schema " userInformation" do
      field :first_name
      field :last_name
      field :employment
      field :employment_position
    end
end
