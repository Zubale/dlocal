defmodule Dlocal.CancelCashout do
  import Dlocal.Util

  @path "cancel_cashout"

  def request(cashout_id) do
    payload = %{
      login: Application.get_env(:dlocal, :login),
      pass: Application.get_env(:dlocal, :pass),
      cashout_id: cashout_id
    }

    make_request(@path, payload)
  end
end
