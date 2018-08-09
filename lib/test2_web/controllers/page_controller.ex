defmodule Test2Web.PageController do
  use Test2Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
