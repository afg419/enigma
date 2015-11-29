defmodule RotationsGeneratorTest do
  use ExUnit.Case

  import RotationsGenerator

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "reduces five-tuple to four-tuple" do
    assert reduce_key({1,2,3,4,5}) == {12,23,34,45}
  end

  test "adds two four-lists" do
    assert add([1,2,3,4],[6,7,8,9]) == [7,9,11,13]
  end

  test "adds two four-tuples" do
    assert add({1,2,3,4},{6,7,8,9}) == {7,9,11,13}
  end

  test "creates rotation from key and offset" do
    assert generate({1,2,3,4,5},{1,2,3,4}) == {13,25,37,49}
  end
end
