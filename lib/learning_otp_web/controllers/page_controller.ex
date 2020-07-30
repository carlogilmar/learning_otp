defmodule LearningOtpWeb.PageController do
  use LearningOtpWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
