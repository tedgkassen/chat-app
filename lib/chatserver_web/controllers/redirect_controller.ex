defmodule ChatServerWeb.RedirectController do
  use ChatServerWeb, :controller

  def redirect_to_long(conn, %{"short_url" => short_url}) do
    IO.puts short_url
    {_, long_url} = Url.get(short_url)
    redirect(conn, external: long_url)
  end
end
