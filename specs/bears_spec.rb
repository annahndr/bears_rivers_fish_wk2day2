require("minitest/autorun")
require("minitest/rg")
require_relative("../bears.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < Minitest::Test

def setup
  @bear1 = Bear.new("winnie_the_pooh", "brown_bear", "hello")
  @bear2 = Bear.new("paddington", "peruvian_bear", "how do you do?")
  @fish1 = Fish.new("tiddler")
  @fish2 = Fish.new("nemo")
  @fish3 = Fish.new("jonah")

end

def test_get_name
  assert_equal("winnie_the_pooh", @bear1.name)
end

def test_get_type
  assert_equal("peruvian_bear", @bear2.type)
end

def test_eat_fish
  @bear1.eat_fish(@fish3)
  assert_equal(1, @bear1.stomach.length)
end

def test_bear_roar
  assert_equal("hello", @bear1.bear_roar("winnie_the_pooh"))
end
##
end
