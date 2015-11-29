defmodule KeyGenerator do

  def generate do
    {rand_digit, rand_digit, rand_digit, rand_digit, rand_digit}
  end

  def rand_digit do
    :random.seed(:os.timestamp)
    Enum.random(1..9)
  end

  def generate({a,b,c,d,e}) when a*b*c*d*e != 0 do
    {a,b,c,d,e}
  end

  def generate(key) do
    generate
  end
end
