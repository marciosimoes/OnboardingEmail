defmodule ApiEmail.EmailService do
  import Swoosh.Email

  def send(file) do
    path = "#{File.cwd!}/#{file.filename}"
    File.cp(file.path, path)

    data = to_string(NaiveDateTime.utc_now)
    new()
    |> to({"Marcio Simões", "eu@marciosimoes.com"})
    |> from({"Marcio Simões", "eu@marciosimoes.com"})
    |> subject("Relatório: #{data}")
    |> text_body("Relatório gerado em #{data}.\n")
    |> attachment(path)
  end
end
