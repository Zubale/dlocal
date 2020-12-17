defmodule Dlocal do
  @moduledoc """
  """

  def exchange_rate(currency) do
    Dlocal.GetExchangeRate.request(currency)
  end
end
