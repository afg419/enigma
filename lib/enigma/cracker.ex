defmodule Cracker do

  def crack(string) do
    string
      |> rotation_types_of
      |> extract_end
      |> rotation_from
      |> order
      |> RotationsGenerator.invert
  end

  def rotation_from(char1, char2) do
    ind2 = Alphabet.get_index(char2)
    ind1 = Alphabet.get_index(char1)
    ind2 - ind1
  end

  def rotation_from([{c1,i1},{c2,i2},{c3,i3},{c4,i4}]) do
    a = {rotation_from("n",c1),i1}
    b = {rotation_from("d",c2),i2}
    c = {rotation_from(".",c3),i3}
    d = {rotation_from(".",c4),i4}
    [a,b,c,d]
  end

  def rotation_types_of(string) do
    String.codepoints(string)
      |> Enum.with_index
      |> Enum.map(fn {char, index} -> {char , rem(index,4)} end)
  end

  def extract_end(list) do
    Enum.slice(list, -4..-1)
  end

  def order(list) do
    Enum.sort(list, fn {_,i1}, {_,i2} -> i1 < i2 end )
      |> Enum.map(fn {rot, _} -> rot end)
      |> List.to_tuple
  end
end
