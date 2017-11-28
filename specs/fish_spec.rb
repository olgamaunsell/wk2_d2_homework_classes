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

# Bears, River, Fish
#
# We are going to build a small ecosystem! We want to create an ecosystem made up of 3 parts: bears, river and fish. You will need a class for each of these. From this you can make instances and build your ecosystem.
#
# How our ecosystem works
#
# A river should have a name e.g. "Amazon"
#
# A river should hold many fish
#
# A fish should have a name
#
# A bear should have a name e.g. "Yogi"
#
# A bear should have an empty stomach ( maybe an array )
#
# A bear should be able to take a fish from the river
#
# A river should lose a fish when a bear takes a fish
#
# Extensions
#
# A bear could have a roar method
# A bear could have a food_count method
# A river could have a fish_count method
