defmodule LogExTest do
  use ExUnit.Case
  doctest LogEx

  test "greets the world" do
    assert LogEx.hello() == :world
  end
end
