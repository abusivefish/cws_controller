defmodule Cws.Adoption do

  def discover do

  end

  defp pull do

  end

  def push(url, csrf_tok, string) do
    device = "#{url}"
    HTTPoison.post! device, csrf_tok, string
  end

end
