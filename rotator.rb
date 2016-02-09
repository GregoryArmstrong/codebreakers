require 'pry'

class Rotator
  attr_reader :shift, :input_text, :alphabet, :i

  def initialize(argv)
    @shift = argv[0].to_i
    @input_text = argv[1..-1]
    @alphabet = ('a'..'z').to_a.join
    @i = shift % alphabet.size
  end

  def original_alphabet
    alphabet
  end

  def offset_alphabet
    alphabet[i..-1] + alphabet[0...i]
  end

  def encrypt_and_do_all_the_shit
    blah = build_true_string.map do |letter|
      letter.downcase.tr(original_alphabet, offset_alphabet)
    end
    response = build_response(blah)
    output_the(response)
  end

  def build_response(blah)
    response = blah.join(' ')
  end

  def build_true_string
    input_text.join(' ').chars
  end

  def output_the(string)
    puts string
  end

end

rotator = Rotator.new(ARGV)
rotator.encrypt_and_do_all_the_shit

