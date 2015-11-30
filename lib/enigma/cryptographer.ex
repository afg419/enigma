# encrypts messages and decrypt messages

defmodule Cryptographer do

  def encrypt(message) do
    d = OffsetGenerator.generate
    k = KeyGenerator.generate
    rotations = RotationsGenerator.generate(k, d)
    Translator.translate(message, rotations)
  end

  def encrypt(message,key,date) do
    d = OffsetGenerator.generate(date)
    k = KeyGenerator.generate(key)
    rotations = RotationsGenerator.generate(k, d)
    Translator.translate(message, rotations)
  end

  def decrypt(message,key) do
    d = OffsetGenerator.generate
    k = KeyGenerator.generate(key)
    rotations = RotationsGenerator.invert_generate(k, d)
    Translator.translate(message, rotations)
  end

  def decrypt(message, key, date) do
    d = OffsetGenerator.generate(date)
    k = KeyGenerator.generate(key)
    rotations = RotationsGenerator.invert_generate(k, d)
    Translator.translate(message, rotations)
  end

  def crack(message) do
    rotations = Cracker.crack(message)
    Translator.translate(message, rotations)
  end

end
