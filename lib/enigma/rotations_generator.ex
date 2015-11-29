defmodule RotationsGenerator do
  # assert reduce_key({1,2,3,4,5}) == {12,23,34,45}

  def reduce_key({a,b,c,d,e}) do
    {join(a,b), join(b,c), join(c,d), join(d,e)}
  end

  def join(a,b) do
    String.to_integer(Enum.join([a,b]))
  end

  def add(tuple1, tuple2) when is_tuple(tuple1) and is_tuple(tuple2) do
    Tuple.to_list(tuple1) |> add(Tuple.to_list(tuple2)) |> List.to_tuple
  end

  def add([ head1 | [] ],[ head2 | [] ]) do
    [head1 + head2]
  end

  def add([ head1 | tail1 ],[ head2 | tail2 ]) do
    [head1 + head2 | add(tail1,tail2)]
  end

  def generate(key,offset) do
    key |> reduce_key |> add(offset)
  end
end
