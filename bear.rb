class Bear

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def roar
    return "roar"
  end

end
