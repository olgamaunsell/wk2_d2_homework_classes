class Bear

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def roar
    return "roar"
  end

  # def take_fish_from_river(river)
  #   while(river.fish_stock.count > 0)
  #     @stomach.push(river.fish_stock.first)
  #     #river.fish_stock.delete_at(0)
  #   end
  #   river.fish_stock.clear()
  # end

  #homework solution

  def take_fish_from_river(river)
    fish = river.get_fish()
    @stomach << fish if !fish.nil?
  end

end
