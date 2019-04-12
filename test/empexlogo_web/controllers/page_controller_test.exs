defmodule EmpexlogoWeb.PageControllerTest do
  use EmpexlogoWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Empexlogo"
  end
end
