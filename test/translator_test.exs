# takes in a string and rotations tuple and returns a translated string
defmodule TranslatorTest do
  use ExUnit.Case

  import Translator

  test "the truth" do
    assert 1+1 == 2
  end

  test "translates 4 letter word" do
    assert translate("abcd", {1,2,3,4}) == "bdfh"
  end

  test "translates an empty string" do
    assert translate("", {1,2,3,4}) == ""
  end

  test "translates 2 letter word" do
    assert translate("ab", {1,2,3,4}) == "bd"
  end

  test "translates 7 letter word" do
    assert translate("abcdaaa", {1,2,3,4}) == "bdfhbcd"
  end

  test "translates 4 letter word backwards" do
    assert translate("abcd", {1,2,3,4}) == "bdfh"
  end

  test "translates sentence with punctuation" do
    assert translate("hello guy.",{1,2,3,4}) == "igopp.jyzb"
  end
end
