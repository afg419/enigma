# encrypts messages and decrypt messages

defmodule Cryptographer do

  def encrypt(message) do

  end

  def encrypt(message,key,date) do
    d = OffsetGenerator.generate(date)
    k = KeyGenerator.generate(key)
    rotations = RotationsGenerator.generate(k, d)
    Translator.translate(message, rotations)

    # key
    #   |> KeyGenerator.generate
    #   |> RotationsGenerator.generate(OffsetGenerator.generate(date))
    #   |> Translator.translate(message)
  end

  def decrypt(message, key, date) do
    d = OffsetGenerator.generate(date)
    k = KeyGenerator.generate(key)
    rotations = RotationsGenerator.invert_generate(k, d)
    Translator.translate(message, rotations)
  end

end
