defmodule Dlocal.CheckStatus do
  import Dlocal.Util

  @path "check_status_cashout"

  def request(%{} = payload) do
    make_request(@path, payload)
  end
end
