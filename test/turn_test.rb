require './test/test_helper'
require './lib/code'
require './lib/peg'
require './lib/turn'

class TurnTest < MiniTest::Test
  def setup
    @turn = Turn.new("rrgb")
  end

  def test_it_exists
    assert_instance_of Turn, @turn
  end

  def test_it_has_attributes
    assert_equal "rrgb", @turn.guess
    assert_equal 0, @turn.correct_elements
    assert_equal 0, @turn.correct_positions
  end
end
