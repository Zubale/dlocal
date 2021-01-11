defmodule Dlocal.UtilsTest do
  @moduledoc false

  use ExUnit.Case

  alias Dlocal.Util

  test "get_url/0 sandbox mode" do
    assert Util.get_url() == "https://sandbox.dlocal.com/api_curl/cashout_api"
  end

  test "payload_signature/1 " do
    payload = %{
      login: "example",
      pass: "examplepass",
      secret_key: "14176ba6c5aded5c334a31e1ed66ca421",
      currency: "COP"
    }

    assert Util.payload_signature(payload) ==
             "e669e2f195c7888167f1a5c1e806c36b38f3a20900b138e008ce9ea8292af846"
  end
end
