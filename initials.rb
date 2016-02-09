require 'pry'

class CodeBreaker
  attr_accessor :words

  def initialize(word_one, word_two, word_three)
    @words = [word_one, word_two, word_three]
  end

  def get_first_initial
    @words.each do |word|
      print word[0].upcase if word
    end
  end
  
end


code_breaker = CodeBreaker.new(ARGV[0], ARGV[1], ARGV[2])
code_breaker.get_first_initial
