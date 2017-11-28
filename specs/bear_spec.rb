require ("MiniTest/autorun")
require ("MiniTest/rg")
require_relative("../bear.rb")

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Boo Boo")
  end

  def test_get_name
    assert_equal("Boo Boo", @bear.name)
  end

end
