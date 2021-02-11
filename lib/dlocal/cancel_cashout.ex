defmodule Dlocal.CancelCashout do
  @moduledoc false

  import Dlocal.Util

  @path "cancel_cashout"

  def request(%{} = payload) do
    make_request(@path, payload)
  end
end
