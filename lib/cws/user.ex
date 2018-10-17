defmodule Cws.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string, null: false
    field :is_admin, :boolean, default: false
    field :name, :string
    field :password_hash, :string, null: false
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :name, :username, :password_hash, :is_admin])
    |> validate_required([:email, :name, :username, :password_hash, :is_admin])
  end
end
