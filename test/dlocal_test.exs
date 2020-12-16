defmodule DlocalTest do
  use ExUnit.Case
  doctest Dlocal

  test "greets the world" do
    assert Dlocal.hello() == :world
  end
end
