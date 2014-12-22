defmodule Email.Router do
  use Phoenix.Router


  pipeline :browser do
    plug :accept    # do we still need this?
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  pipeline :api do
    plug :accept
  end



  scope "/", alias: Email do
    # Use the default browser stack.
    pipe_through :browser

    get "/", Email.PageController, :index, as: :pages
  end


  scope "/api", alias: Email.Api do
    pipe_through :api

    resources "/user", UserController
    resources "/template", TemplateController
    resources "/user_information", UserInformationController

  end
end
