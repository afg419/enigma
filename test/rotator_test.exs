# take in a char and a rotation and returns rotated char
defmodule RotatorTest do
  use ExUnit.Case

  import Rotator

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "doesnt rotates a character" do
    assert rotate("c", 0) == "c"
  end

  test "rotates a character forward" do
    assert rotate("c", 2) == "e"
  end

  test "rotates a character backward" do
    assert rotate("c", -2) == "a"
  end

  test "rotates a character backward" do
    assert rotate("c", -2) == "a"
  end

  test "rotates a character backwards around the back" do
    assert rotate("c",-3) == "."
  end

  test "rotates by large numbers" do
    assert rotate("c", 253) == "v"
  end
end
