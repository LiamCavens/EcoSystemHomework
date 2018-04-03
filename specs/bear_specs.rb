require('minitest/autorun')
require('minitest/rg')
require_relative("../bear.rb")

class BearTest < MiniTest::Test

    def setup()
        stomach = []
        @bear = Bear.new("Hamish", stomach)
    end

    def test_get_bear_name()
        assert_equal("Hamish", @bear.name)
    end

    def test_bear_get_fish()
        assert_equal("I can get fish", @bear.get_fish())
    end

end