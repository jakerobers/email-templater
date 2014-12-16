defmodule Repo do
	use Ecto.Repo, adapter: Ecto.Adapters.Postgres

	def conf do
		parse_url "ecto://postgres:postgres@localhost/et"
	end
end
