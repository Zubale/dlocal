defmodule Dlocal.Util do
  @moduledoc false

  @doc false
  @spec get_url() :: String.t()
  def get_url() do
    if Application.get_env(:dlocal, :sandbox) == false, do: live_url, else: sandbox_url
  end

  defp live_url do
    "https://api.dlocal.com/api_curl/cashout_api"
  end

  defp sandbox_url do
    "https://sandbox.dlocal.com/api_curl/cashout_api"
  end

  def payload_signature(payload) do
    {_, enc} = Jason.encode(payload)

    :crypto.hmac(:sha256, Application.get_env(:dlocal, :secret_key), enc)
    |> Base.encode16()
    |> String.downcase()
  end
end
