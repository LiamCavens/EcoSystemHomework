require('minitest/autorun')
require('minitest/rg')
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class RiverTest < MiniTest::Test

    def setup()
        @river = River.new("Clyde", 1000)
    end
    
    def test_get_river_name()
        assert_equal("Clyde", @river.name)
    end

    def test_get_fish_count()
        assert_equal(1000, @river.fish_count)
    end

end