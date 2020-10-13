defmodule ApiEmailWeb.EmailController do
  use ApiEmailWeb, :controller
  alias ApiEmail.Service.EmailService
  alias ApiEmailWeb.Mailer

  def send_email(conn, %{"arquivo" => file}) do
    EmailService.send(file)
    |> Mailer.deliver
    render(conn, "index.html")
  end
end
