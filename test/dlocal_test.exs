defmodule DlocalTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  doctest Dlocal

  setup_all do
    HTTPoison.start()
  end

  test "get exchange rate" do
    use_cassette "get_exchange_rate" do
      params = %{
        login: "example",
        pass: "examplepass",
        secret_key: "14176ba6c5aded5c334a31e1ed66ca421",
        currency: "COP"
      }

      assert Dlocal.exchange_rate(params) == %{"exchange_rate" => 3851.87, "status" => 0}
    end
  end

  test "request payout" do
    use_cassette "request_payout" do
      params = %{
        login: "example",
        pass: "examplepass",
        secret_key: "14176ba6c5aded5c334a31e1ed66ca421",
        external_id: :os.system_time(:millisecond) |> to_string,
        document_id: "1004922993",
        document_type: "CC",
        beneficiary_name: "Jhon",
        beneficiary_lastname: "Doe",
        country: "CO",
        bank_code: "007",
        bank_name: "bancolombia",
        bank_account: "96382852354",
        account_type: "S",
        amount: "100000",
        currency: "COP",
        address: "Street false"
      }

      assert Dlocal.request_payout(params) == %{
               "cashout_id" => 126_831,
               "desc" => "OK",
               "status" => 0
             }
    end
  end

  test "check status" do
    use_cassette "check_status" do
      params = %{
        login: "example",
        pass: "examplepass",
        secret_key: "14176ba6c5aded5c334a31e1ed66ca421",
        cashout_id: 126_831
      }

      assert Dlocal.check_status(params) == %{
               "cash_out_status" => 0,
               "description" => "Received",
               "status" => 0
             }
    end
  end

  test "cancel cashout" do
    use_cassette "cancel_cashout" do
      params = %{
        login: "example",
        pass: "examplepass",
        secret_key: "14176ba6c5aded5c334a31e1ed66ca421",
        cashout_id: 126_831
      }

      assert Dlocal.cancel_cashout(params) == %{
               "description" => "OK",
               "status" => 0
             }
    end
  end
end
