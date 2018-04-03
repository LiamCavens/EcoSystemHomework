require('minitest/autorun')
require('minitest/rg')
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup()
      @fish1 = Fish.new("Salmon")
      @fish2 = Fish.new("Trout")
      @fish3 = Fish.new("Seabass")
      @fish4 = Fish.new("Tuna")
      @fish5 = Fish.new("Sole")
  end

  def test_get_fish_name()
      assert_equal("Salmon", @fish1.species)
  end


end
