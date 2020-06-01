require './test/test_helper'
require './lib/code'
require './lib/peg'

class CodeTest < MiniTest::Test
  def setup
    @code = Code.new
  end

  def test_it_exists
    assert_instance_of Code, @code
  end

  def test_it_has_pegs
    assert_equal @code.pegs.count, 4
  end
end
