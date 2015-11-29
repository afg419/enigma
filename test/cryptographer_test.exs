defmodule CryptographerTest do
  use ExUnit.Case

  import Cryptographer

  test "the truth" do
    assert 1 == 1
  end

  test "it encrypts message with given key, and date" do
    assert encrypt("message", {1,2,3,4,5}, {2015, 03, 02}) == "73p3v5b"
  end

  test "it decrypts message with given key, and date" do
    assert decrypt("73p3v5b", {1,2,3,4,5}, {2015, 03, 02}) == "message"
  end
end
