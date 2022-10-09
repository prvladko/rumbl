defmodule Rumbl.Accounts do
  @moduledoc """
  The Account context.
  """

  alias Rumbl.Repo

  alias Rumbl.Accounts.User

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def get_user(id) do
    # Enum.find(list_users(), fn map -> map.id == id end)
    Repo.get(User, id)
  end

  def get_user!(id) do
    # Enum.find(list_users(), fn map -> map.id == id end)
    Repo.get!(User, id)
  end

  def get_user_by(params) do
    Repo.get_by(User, params)
  end

  def list_users do
    Repo.all(User)
  end

  def change_user(%User{} = user) do
    User.changeset(user, %{})
  end

  def change_registration(%User{} = user, params) do
    User.registration_changeset(user, params)
  end

  def register_user(attrs \\ %{}) do
    %User{}
    |> User.registration_changeset(attrs)
    |> Repo.insert()
  end
end
