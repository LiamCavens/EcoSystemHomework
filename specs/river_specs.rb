require('minitest/autorun')
require('minitest/rg')
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class RiverTest < MiniTest::Test

    def setup()
        @bear = Bear.new("Hamish", [])
        fish = Fish.new("Salmon")
        @river = River.new("Clyde", [])
        @fish1 = Fish.new("Salmon")
        @fish2 = Fish.new("Trout")
        @fish3 = Fish.new("Seabass")
        @fish4 = Fish.new("Tuna")
        @fish5 = Fish.new("Sole")
    end
    
    def test_get_river_name()
        assert_equal("Clyde", @river.name)
    end


    def test_fish_count()
        @river.put_fish_in_river(@fish1)
        @river.put_fish_in_river(@fish2)
        @river.put_fish_in_river(@fish3)
        @river.put_fish_in_river(@fish4)
        @river.put_fish_in_river(@fish5)
        assert_equal(5, @river.fish_count())
    end

    def test_take_fish_from_river()
        @river.put_fish_in_river(@fish1)
        @river.put_fish_in_river(@fish2)
        @river.put_fish_in_river(@fish3)
        @river.put_fish_in_river(@fish4)
        @river.put_fish_in_river(@fish5)
        @river.take_fish_from_river()
        assert_equal(4, @river.fish_count())
    end

end