defmodule RumblWeb.UserController do
  use RumblWeb, :controller

  alias Rumbl.Accounts

  def index(conn, params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end
end
