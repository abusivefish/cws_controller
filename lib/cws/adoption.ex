defmodule Cws.Adoption do

  def discover do

  end

  defp pull do

  end

  def push(url) do
    device = "#{url}"
    HTTPoison.get! device
  end

end
