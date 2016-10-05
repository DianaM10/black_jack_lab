require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../player')
require_relative('../game')
require_relative ('../card')

class TestPlayer < Minitest::Test

def setup
  @player1 = Player.new("Fred")
  @player2 = Player.new("Barney")

  players = [@player1, @player2]
  @game = Game.new(players)
  @card = Card.new
end

def test_player_name
  assert_equal("Fred", @player1.name)
end

def test_player_starts_with_empty_hand
  assert_equal([], @player1.hand)
end

def test_total_of_hand
  @game.deal_hand(@card)
  @game.deal_hand(@card)
  total = @player1.total_of_hand
  assert_equal(Fixnum, total.class)
end

end  