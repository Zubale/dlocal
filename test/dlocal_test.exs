defmodule DlocalTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  doctest Dlocal

  setup_all do
    HTTPoison.start()
  end

  test "get exchange rate" do
    use_cassette "success" do
      assert Dlocal.exchange_rate("COP") == %{"exchange_rate" => 3851.87, "status" => 0}
    end
  end
end
