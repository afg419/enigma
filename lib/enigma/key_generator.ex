defmodule KeyGenerator do

  def generate do
    {rand_digit, rand_digit, rand_digit, rand_digit, rand_digit}
  end

  def rand_digit do
    :timer.sleep(1)
    :random.seed(:erlang.now())
    :random.uniform(9)
  end

  def generate({a,b,c,d,e}) when a*b*c*d*e != 0 do
    {a,b,c,d,e}
  end


  def generate(key) do
    generate
  end
end
