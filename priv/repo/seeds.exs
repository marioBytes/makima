# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Makima.Repo.insert!(%Makima.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

users = [
  %{
    email: "mario@makima.io",
    password: "12345678"
  },
  %{
    email: "testuser@makima.io",
    password: "12345678"
  },
  %{
    email: "makima@makima.io",
    password: "12345678"
  }
]

Enum.each(users, fn user -> Makima.Accounts.register_user(user) end)
