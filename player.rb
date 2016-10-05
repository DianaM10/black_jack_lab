class Player

  attr_reader(:name, :hand)

  def initialize(name)
    @name = name
    @hand = []
  end

  def total_of_hand()
    return @hand.inject(:+)
  end

end