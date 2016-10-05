class Card


def initialize
  @deal = (1..10).to_a
end

def deal
  @deal.sample
end


end