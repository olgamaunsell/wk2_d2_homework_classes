require ("MiniTest/autorun")
require ("MiniTest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Goldie")
  end

  def test_get_name
    assert_equal("Goldie", @fish.name)
  end

end
