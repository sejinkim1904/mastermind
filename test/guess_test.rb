require './test/test_helper'
require './lib/code'
require './lib/peg'

class GuessTest < MiniTest::Test
  def setup
    @guess = Guess.new
  end

  def test_it_exists
    assert_instance_of Guess, @guess
  end
end
