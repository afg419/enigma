
defmodule KeyGeneratorTest do
  use ExUnit.Case

  import KeyGenerator

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "key has proper format" do
    first = generate
    assert Enum.all?(Tuple.to_list(first), fn char -> char in 1..9 end)
    assert first != generate
  end

  test "key is generated with input" do
    assert generate({5,4,3,2,1}) == {5,4,3,2,1}
  end

  test "key defaults to default if incorrect input given" do
    assert tuple_size(generate({5,4,3})) == 5
    assert tuple_size(generate({5,4,0,2,1})) == 5
  end

  test "key has 5 digits" do
    assert tuple_size(generate) == 5
    assert tuple_size(generate({1})) == 5
  end
end
