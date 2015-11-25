defmodule OffsetGenerator do


  def process({a,b,c}) do
    c*10000 + b*100 + rem(a,100)
  end

  def get_offset do
    get_date |> process |> :math.pow(2) |> round |> extract
  end

  def get_offset(date) do
    date |> process |> :math.pow(2) |> round |> extract
  end

  def get_date do
    {date, _} = :calendar.universal_time
    date
  end

  def extract(num) do
    [a,b,c,d | tail] = Enum.reverse(String.codepoints(Integer.to_string(num)))
  List.to_tuple(Enum.map([d,c,b,a], &(String.to_integer(&1)) ))
  end

  def generate do
    :erlang |> get_offset
  end
end
