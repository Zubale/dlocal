defmodule Dlocal.UtilsTest do
  @moduledoc false

  use ExUnit.Case

  alias Dlocal.Util

  test "get_url/0 sandbox mode" do
    assert Util.get_url() == "https://sandbox.dlocal.com/api_curl/cashout_api"
  end
end