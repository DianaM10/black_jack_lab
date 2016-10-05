class Game

  attr_reader :winner

  def initialize(players)
    @players = players
    @winner = nil

  end

  def number_of_players
    return @players.count
  end

  def current_player
    return @players[0]
  end

  def change_to_next_player
    return @players.rotate!
  end

  def deal_hand(card)
    return current_player.hand << card.deal
  end

 

  

end