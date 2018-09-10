defmodule P001Test do
  use ExUnit.Case
  doctest P001

  test "greets the world" do
    assert P001.hello() == :world
  end
end
