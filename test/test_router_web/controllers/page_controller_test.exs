defmodule TestRouterWeb.PageControllerTest do
  use TestRouterWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "GET /slugs0", %{conn: conn} do
    conn = get(conn, "/slugs0")
    assert conn.path_info == ["slugs0"]
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "GET / via helper", %{conn: conn} do
    conn = get(conn, page_path(conn, :index))
    assert conn.path_info == []

    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "GET /slugs via helper", %{conn: conn} do
    conn = get(conn, page_path(conn, :index, ["slug0"]))
    assert conn.path_info == ["slug0"]

    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "GET /show via helper", %{conn: conn} do
    conn = get(conn, page_path(conn, :show))
    assert conn.path_info == []

    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "GET /show/slugs via helper", %{conn: conn} do
    conn = get(conn, page_path(conn, :show, ["slug0"]))
    assert conn.path_info == ["slug0"]

    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
