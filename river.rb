class River

  attr_reader :name, :fish_stock

  def initialize(name, fish_stock)
    @name = name
    @fish_stock = fish_stock || []
  end

  def fish_count
    return @fish_stock.count()
  end

  #homework solution

  def add_fish(fish)
    @fish_stock.push(fish)
  end

  def get_fish
    #.pop gets last element in array
    @fish_stock.pop
  end

end
