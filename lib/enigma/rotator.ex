defmodule Rotator do
  def rotate(char,rotation) do
    char |> Alphabet.get_index |> + rotation |> Alphabet.get_char
  end
end
