# Enigma

  An Elixir implementation of the German second world war ENIGMA crytographic system.  Contains encryption, decryption, and code crack capability for messages ending in '..end..'.  

In iex:
- `Cryptographer.encrypt(<message>)`
returns encrypted message with randomly generated key.
- `Cryptographer.decrypt(<encrypted message>, key)`
returns deciphered message.
- `Cryptographer.crack(<encrypted message>)`
returns deciphered message if ending in '..end..'

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add enigma to your list of dependencies in `mix.exs`:

        def deps do
          [{:enigma, "~> 0.0.1"}]
        end

  2. Ensure enigma is started before your application:

        def application do
          [applications: [:enigma]]
        end
