@moduledoc ""

defmodule Dlocal.RequestPayout do
  @moduledoc false

  import Dlocal.Util

  @path "request_cashout"

  def request(%{} = params) do
    make_request(@path, params)
  end
end
