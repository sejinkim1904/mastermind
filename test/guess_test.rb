require './test/test_helper'
require './lib/code'
require './lib/peg'

class GuessTest < MiniTest::Test
  def setup
    @guess = Guess.new
  end
end
