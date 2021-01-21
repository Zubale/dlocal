defmodule Dlocal do
  @moduledoc """
  """

  def exchange_rate(%{} = params) do
    Dlocal.GetExchangeRate.request(currency)
  end

  def request_payout(%{} = params) do
    Dlocal.RequestPayout.request(params)
  end

  def check_status(%{} = params) do
    Dlocal.CheckStatus.request(cashout_id)
  end

  def cancel_cashout(%{} = params) do
    Dlocal.CancelCashout.request(cashout_id)
  end
end
