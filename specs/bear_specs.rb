require('minitest/autorun')
require('minitest/rg')
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test

    def setup()
        @bear = Bear.new("Hamish", [])
        @river = River.new("Clyde", [])
        @fish1 = Fish.new("Salmon")
        fish = Fish.new("Salmon")
    end

    def test_get_bear_name()
        assert_equal("Hamish", @bear.name)
    end

    def test_bear_get_fish()
        @bear.get_fish(@fish)
        assert_equal(1, @bear.stomach.count)
    end

    def test_bear_roar()
        assert_equal("RROOOOOAAARRRRRR", @bear.bear_roar())
    end

    # def test_food_count()
    #     @river.put_fish_in_river(@fish1)
    #     @bear.put_food_in_stomach(@fish1)
    #     assert_equal(1, @bear.stomach.count)
    # end

end