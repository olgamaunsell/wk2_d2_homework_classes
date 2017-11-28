require ("MiniTest/autorun")
require ("MiniTest/rg")
require_relative("../river.rb")

class TestRiver < MiniTest::Test
  def setup
    @river = River.new("Forth", ["Goldie", "Tiddler", "Pinkie"])
  end

  def test_get_name
    assert_equal("Forth", @river.name)
  end

  def test_get_fish_stock
    assert_equal(["Goldie", "Tiddler", "Pinkie"], @river.fish_stock)
  end
end
