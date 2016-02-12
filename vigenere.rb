require 'pry'

class Vigenere
  attr_reader :args, :key, :rotate_key

  def initialize(args)
    @args = args
    @key  = {"a" => 1,
             "b" => 2,
             "c" => 3,
             "d" => 4,
             "e" => 5,
             "f" => 6,
             "g" => 7,
             "h" => 8,
             "i" => 9,
             "j" => 10,
             "k" => 11,
             "l" => 12,
             "m" => 13,
             "n" => 14,
             "o" => 15,
             "p" => 16,
             "q" => 17,
             "r" => 18,
             "s" => 19,
             "t" => 20,
             "u" => 21,
             "v" => 22,
             "w" => 23,
             "x" => 24,
             "y" => 25,
             "z" => 26
            }
  end

  def build_key
    letters = args[0].chars
    @rotate_key = letters.map do |letter|
      @key[letter]
    end
  end

  def encode
    plain_text = args.join(" ")
    binding.pry
    #return cipher_text.join    
  end
end


vigenere = Vigenere.new(ARGV)
vigenere.build_key
vigenere.encode
