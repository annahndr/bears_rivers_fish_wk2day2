
class Bear

attr_reader :name, :type, :roar, :stomach

  def initialize(name, type, roar)
    @name = name
    @type = type
    @roar = roar
    @stomach = []
  end

def eat_fish(fish)
  @stomach << fish
  return @stomach
end

def bear_roar(name)
  if @name == name
  return @roar
  end
end

##
end
