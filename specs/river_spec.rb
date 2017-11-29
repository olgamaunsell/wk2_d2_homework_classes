require ("MiniTest/autorun")
require ("MiniTest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < MiniTest::Test
  def setup
    @fish1 = Fish.new("Goldie")
    @fish2 = Fish.new("Tiddler")
    @fish3 = Fish.new("Pinkie")
    @fish_stock = [@fish1,@fish2,@fish3]
    @river = River.new("Forth",@fish_stock)
  end

  def test_get_name
    assert_equal("Forth", @river.name)
  end

  def test_get_fish_stock
    #*** need to go back over this test ***
    assert_equal([@fish1,@fish2,@fish3], @river.fish_stock)
  end

  def test_count_fish
    assert_equal(3, @river.fish_count())
  end

  def test_can_add_fish
    @river.add_fish(@fish4)
    assert_equal(4, @river.fish_count())
  end

  def test_can_get_fish
    @river.add_fish(@fish3)
    fish = @river.get_fish
    assert_equal(@fish3.name, fish.name)
  end
end
