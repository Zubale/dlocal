defmodule Dlocal.CheckStatus do
  @moduledoc false

  import Dlocal.Util

  @path "check_status_cashout"

  def request(%{} = payload) do
    make_request(@path, payload)
  end
end
