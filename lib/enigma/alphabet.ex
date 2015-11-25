defmodule Alphabet do


  def alphabet do
    letters = Enum.map((97..122),fn x -> <<x>> end )
    numbers = Enum.map((0..9),fn x -> Integer.to_string(x) end )
    extra = [" "] ++ [","] ++ ["."]
    letters ++ numbers ++ extra
  end

  # def get_char(index) when index < 40 do
  #   Enum.at(alphabet, index)
  # end

  def get_char(index) do
    Enum.at(alphabet, rem(index,39))
  end

  def get_index(char) do
    Enum.find_index(alphabet, fn x -> x == char end)
  end

  # "c" |> Alphabet.get_index |> + rotate |> Alphabet.get_char
end
