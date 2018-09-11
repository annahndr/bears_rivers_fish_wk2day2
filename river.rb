
class River

attr_reader :name, :fish_array

  def initialize(name)
    @name = name
    @fish_array = []
  end

  def put_fish_in_river(fish)
    @fish_array << fish
    return @fish_array
  end

  def bear_eats_fish(fish)
    @fish_array.delete(fish)
    return @fish_array
  end

end
