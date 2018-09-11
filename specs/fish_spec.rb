require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../bears.rb")
require_relative("../fish.rb")

class FishTest < Minitest::Test

def setup
  @fish1 = Fish.new("tiddler")
  @fish2 = Fish.new("nemo")
  @fish3 = Fish.new("jonah")

end

def test_get_fish_name
  assert_equal("nemo", @fish2.name)
end



end
