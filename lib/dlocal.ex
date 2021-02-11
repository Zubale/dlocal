defmodule Dlocal do
  @moduledoc false

  def exchange_rate(%{} = params) do
    Dlocal.GetExchangeRate.request(params)
  end

  def request_payout(%{} = params) do
    Dlocal.RequestPayout.request(params)
  end

  def check_status(%{} = params) do
    Dlocal.CheckStatus.request(params)
  end

  def cancel_cashout(%{} = params) do
    Dlocal.CancelCashout.request(params)
  end
end
