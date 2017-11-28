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

  def test_stomach__empty
    assert_equal(0, @bear.stomach.count())
  end

  # def test_take_fish_from_river
  #
  # end

  def test_roar
    assert_equal("roar", @bear.roar())
  end
end
