require ("MiniTest/autorun")
require ("MiniTest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < MiniTest::Test
  def setup
    @fish1 = Fish.new("Goldie")
    p @fish1
    @fish2 = Fish.new("Tiddler")
    @fish3 = Fish.new("Pinkie")
    @fish_stock = [@fish1, @fish2, @fish3]
    @river = River.new("Forth", @fish_stock)
  end

  def test_get_name
    assert_equal("Forth", @river.name)
  end

  # def test_get_fish_stock
  #   assert_equal(["Goldie", "Tiddler", "Pinkie"], @river.fish_stock)
  #   p @river
  # end
end
