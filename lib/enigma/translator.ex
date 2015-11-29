defmodule Translator do
  def translate(string, rotations) do
    index_list = Enum.with_index(String.codepoints(string))
    Enum.map_join(index_list, fn {char, ind} ->
       Rotator.rotate(char, map(rotations)[rem(ind, 4)]) end)
  end

  def map({a,b,c,d}) do
    %{0 => a, 1 => b, 2 => c, 3 => d}
  end
end
