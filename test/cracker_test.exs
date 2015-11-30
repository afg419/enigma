defmodule CrackerTest do
  use ExUnit.Case

  import Cracker

  test "the truth" do
    assert 1 == 1
  end

  test "it gets rotations from encrypted string" do
    assert crack("2opzgpze1veznjyl2eggnukgi") == {30, -7, -7, 32}
  end

  test "returns rotation from encrypted letter" do
    assert rotation_from("n","u") == 7
  end

  test "returns rotation from encrypted letter again" do
    assert rotation_from("b","a") == -1
  end

  test "gets reduced indices from letters in encrypted 4-string" do
    assert rotation_types_of("abcd") == [{"a",0}, {"b",1}, {"c",2}, {"d",3}]
  end

  test "gets reduced indices from letters in encrypted 6-string" do
    assert rotation_types_of("abcdef") == [{"a",0}, {"b",1}, {"c",2}, {"d",3},{"e",0},{"f",1}]
  end

  test "gets last four entries of a list" do
    assert extract_end([1,2,3,4,5,6]) == [3,4,5,6]
  end

  test "gets rotation_from last 4 elements" do
    assert rotation_from([{"c",2}, {"d",3},{"e",0},{"f",1}]) == [{-11, 2}, {0, 3}, {-34, 0}, {-33, 1}]
  end

  test "orders rotations" do
    assert order([{-11, 2}, {0, 3}, {-34, 0}, {-33, 1}]) == {-34, -33, -11, 0}
  end

end
