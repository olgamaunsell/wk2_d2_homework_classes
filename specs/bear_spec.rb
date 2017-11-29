require ("MiniTest/autorun")
require ("MiniTest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Boo Boo")
    #homework need to add new fish

    @river = River.new("Amazon", nil)
    @fish5 = Fish.new("Pinkie")
    #need to populate river so bear can eat from eat it
  end

  def test_get_name
    assert_equal("Boo Boo", @bear.name)
  end

  def test_stomach__empty
    assert_equal(0, @bear.stomach.count())
  end

  def test_take_fish_from_river
    @river.add_fish(@fish5)
    @bear.take_fish_from_river(@river)
    #check bear count goes up by 1 and fish stock goes down
    assert_equal(1, @bear.stomach.count())
    assert_equal(0, @river.fish_stock.count())
  end

  def test_roar
    assert_equal("roar", @bear.roar())
  end
end
