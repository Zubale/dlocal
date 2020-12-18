defmodule Dlocal.GetExchangeRate do
  import Dlocal.Util

  @path "get_exchange_rate"

  def request(currency) do
    payload = %{
      login: Application.get_env(:dlocal, :login),
      pass: Application.get_env(:dlocal, :pass),
      currency: currency
    }

    make_request(@path, payload)
  end
end
