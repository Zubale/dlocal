defmodule Dlocal.RequestPayout do
  import Dlocal.Util

  @path "request_cashout"

  def request(%{} = params) do
    payload =
      Map.merge(
        %{login: Application.get_env(:dlocal, :login), pass: Application.get_env(:dlocal, :pass)},
        params
      )

    make_request(@path, payload)
  end
end
