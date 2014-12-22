defmodule Email.TemplateController do
  use Phoenix.Controller

  ###
  # Takes you to the index of the templates page.
  ###
  def index(conn, _) do
      # Get top 10 views and list them.
      render :index, _
  end


  ###
  # Takes you to the new page.
  ###
  def new(conn, ) do
      render :new, _
  end


  ###
  # Creates a request for a new template.
  ###
  def create(conn, %{user: user, email_content: email_content, title: title,
                        description: description, tags: tags}) do

    template = %Template{creator_id: user.user_id, email_content: email_content,
        title: title, description: description, tags: tags}

    case Template.validate(template) do
        nil ->
            Repo.insert(template)
            json template: template
        errors ->
            json errors: errors
    end
  end


  ###
  # This will show a template (public page)
  ###
  def show(conn, %{id: id}) do
      template = Repo.get(Template, id)
      json template
  end



  ###
  # This will show the edit view.
  ###
  def edit(conn, _) do
      render
  end



  ###
  # This will create a request to update a template
  ###
  def update(conn, _) do
      json
  end



  ###
  # This will create a request to destroy a template.
  ###
  def destroy(conn, _) do
      json
  end
end
