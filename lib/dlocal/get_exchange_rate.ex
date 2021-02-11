defmodule Dlocal.GetExchangeRate do
  @moduledoc false

  import Dlocal.Util

  @path "get_exchange_rate"

  def request(%{} = params) do
    make_request(@path, params)
  end
end
