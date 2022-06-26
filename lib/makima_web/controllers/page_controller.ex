defmodule MakimaWeb.PageController do
  use MakimaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
