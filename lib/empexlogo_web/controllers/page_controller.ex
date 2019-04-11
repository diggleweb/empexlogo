defmodule EmpexlogoWeb.PageController do
  use EmpexlogoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
