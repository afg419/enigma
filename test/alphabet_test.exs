defmodule AlphabetTest do
  use ExUnit.Case

  import Alphabet

  test "Alphabet looks as it should" do
    assert alphabet == ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                        "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                        "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
                        "4", "5", "6", "7", "8", "9", " ", ",", "."]
  end

  test "get_index returns character index" do
    assert get_index("c") == 2
  end

  test "get_char returns index's character" do
    assert get_char(2) == "c"
  end

  test "get_char returns last character" do
    assert get_char(38) == "."
  end

  test "get_char returns character with large index" do
    assert get_char(41) == "c"
  end

  test "get_char for negative index" do
    assert get_char(-1) == "."
  end

  test "get_char for very large negative index" do
    assert get_char(-42) == " "
  end
end
