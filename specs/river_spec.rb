require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../bears.rb")
require_relative("../fish.rb")

class RiverTest < Minitest::Test

def setup
  @river = River.new("yukon_river")
  @fish1 = Fish.new("tiddler")
  @fish2 = Fish.new("nemo")
  @fish3 = Fish.new("jonah")
end

def test_get_river_name
  assert_equal("yukon_river", @river.name)
end

def test_put_fish_in_river
  @river.put_fish_in_river(@fish1)
  @river.put_fish_in_river(@fish2)
  assert_equal(2, @river.fish_array.length)
end

def test_bear_eats_fish
  @river.put_fish_in_river(@fish1)
  @river.put_fish_in_river(@fish2)
  @river.bear_eats_fish(@fish2)
  assert_equal(1, @river.fish_array.length)
end


end
