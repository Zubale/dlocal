defmodule Dlocal do
  @moduledoc """
  """

  def exchange_rate(currency) do
    Dlocal.GetExchangeRate.request(currency)
  end

  def request_payout(%{} = params) do
    Dlocal.RequestPayout.request(params)
  end
end
