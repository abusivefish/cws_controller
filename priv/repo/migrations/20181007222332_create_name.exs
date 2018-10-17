defmodule Cws.Repo.Migrations.CreateName do
  use Ecto.Migration

  def change do
    create table(:name) do
      add :name, :string

      timestamps()
    end

  end
end
