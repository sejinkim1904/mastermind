require './test/test_helper'
require './lib/code'
require './lib/peg'
require './lib/turn'

class TurnTest < MiniTest::Test
  def setup
    @code = Code.new([
      Peg.new("red"),
      Peg.new("red"),
      Peg.new("green"),
      Peg.new("blue")
    ])
    @turn_1 = Turn.new("rrgb", @code)
    @turn_2 = Turn.new("bgrr", @code)
    @turn_3 = Turn.new("rbgr", @code)
    @turn_4 = Turn.new("rgbr", @code)
    @turn_5 = Turn.new("ryrr", @code)
  end

  def test_it_exists
    assert_instance_of Turn, @turn_1
  end

  def test_it_has_attributes
    assert_equal  ["r", "r", "g", "b"], @turn_1.guess
    assert_equal ["r", "r", "g", "b"], @turn_1.code
    assert_equal 0, @turn_1.correct_elements
    assert_equal 0, @turn_1.correct_positions
  end

  def test_it_can_analyze_guess
    @turn_1.analyze
    assert_equal 4, @turn_1.correct_elements
    assert_equal 4, @turn_1.correct_positions

    @turn_2.analyze
    assert_equal 4, @turn_2.correct_elements
    assert_equal 0, @turn_2.correct_positions

    @turn_3.analyze
    assert_equal 4, @turn_3.correct_elements
    assert_equal 2, @turn_3.correct_positions

    @turn_4.analyze
    assert_equal 4, @turn_4.correct_elements
    assert_equal 1, @turn_4.correct_positions

    @turn_5.analyze
    assert_equal 2, @turn_5.correct_elements
    assert_equal 1, @turn_5.correct_positions
  end
end
