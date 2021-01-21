defmodule Dlocal.Util do
  @moduledoc false

  @doc false
  @spec get_url() :: String.t()
  def get_url() do
    if Application.get_env(:dlocal, :sandbox) == "false", do: live_url(), else: sandbox_url()
  end

  defp live_url do
    "https://api.dlocal.com/api_curl/cashout_api"
  end

  defp sandbox_url do
    "https://sandbox.dlocal.com/api_curl/cashout_api"
  end

  def payload_signature(%{} = payload) do
    {_, enc} = Jason.encode(Map.delete(payload, :secret_key))

    :crypto.hmac(:sha256, payload[:secret_key], enc)
    |> Base.encode16()
    |> String.downcase()
  end

  def make_request(path, payload) do
    {_, enc} = Jason.encode(Map.delete(payload, :secret_key))

    headers = [
      "Payload-Signature": payload_signature(payload),
      "Content-Type": "application/json"
    ]

    "#{get_url()}/#{path}" |> HTTPoison.post(enc, headers) |> parse_response()
  end

  defp parse_response({:ok, %HTTPoison.Response{body: body, status_code: 200}}) do
    body |> Jason.decode!()
  end

  defp parse_response({:ok, %HTTPoison.Response{body: body, status_code: status_code}}) do
    %{status_code: status_code, body: body |> Jason.decode!()}
  end
end
