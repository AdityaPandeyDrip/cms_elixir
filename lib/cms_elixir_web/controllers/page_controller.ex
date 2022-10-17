defmodule CmsElixirWeb.PageController do
  use CmsElixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
