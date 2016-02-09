require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/caesar'

class CaesarTest < Minitest::Test
  def test_caesar_returns_encryption
    assert_equal "ifmmp jmbob",   Caesar.new(["1", "Hello", "Ilana"]).encrypt_and_do_all_the_shit
  end
end
