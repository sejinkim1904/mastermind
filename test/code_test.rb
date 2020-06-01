require './test/test_helper'
require './lib/code'

class CodeTest < MiniTest::Test
  def setup
    @code = Code.new
  end

  def test_it_exists
    assert_instance_of Code, @code
  end
end
