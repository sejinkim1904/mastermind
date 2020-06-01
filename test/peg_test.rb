require './test/test_helper'
require './lib/peg'

class PegTest < MiniTest::Test
  def setup
    @peg = Peg.new("blue")
  end

  def test_it_exists
    assert_instance_of Peg, @peg
  end

  def test_it_has_a_color
    assert @peg.color, "blue"
  end
end
