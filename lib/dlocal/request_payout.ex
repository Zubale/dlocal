defmodule Dlocal.RequestPayout do
  import Dlocal.Util

  @path "request_cashout"

  def request(%{} = params) do
    make_request(@path, params)
  end
end
