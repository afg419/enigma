
ExUnit.configure(exclude: :pending)
defmodule OffsetGeneratorTest do
  use ExUnit.Case

  import OffsetGenerator

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "get offset from date" do
    assert {9,2,2,5} == get_offset({2015, 03, 02})
  end

  test "process date to single number" do
    assert 020315 == process({2015,03,02})
  end

  test "extracts last four digits" do
    assert {7,3,5,5} == extract(9186747355)
  end
end
