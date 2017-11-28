require ("MiniTest/autorun")
require ("MiniTest/rg")
require_relative("../river.rb")

class TestRiver < MiniTest::Test
  def setup
    @river = River.new("Forth")
  end

  def test_get_name
    assert_equal("Forth", @river.name)
  end

end
