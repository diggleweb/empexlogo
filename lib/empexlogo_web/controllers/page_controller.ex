defmodule EmpexlogoWeb.PageController do
  use EmpexlogoWeb, :controller

  def index(conn, _params) do
    live_render(conn, EmpexlogoWeb.PageLiveView, session: %{})
  end
end
