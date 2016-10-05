require('Pry-byebug')

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../game')
require_relative ('../player')
require_relative ('../card')

class TestGame < Minitest::Test

  def setup
    @player1 = Player.new("Fred")
    @player2 = Player.new("Barney")

    players = [@player1, @player2]

    @game = Game.new(players)
    @card = Card.new
  end

  def test_game_starts_with_2_players
    assert_equal(2, @game.number_of_players)
  end

  def test_game_starts_as_player_1
    assert_equal(@player1, @game.current_player)
  end

  def test_can_change_to_next_player
    @game.change_to_next_player
    assert_equal(@player2, @game.current_player)
  end

  def test_player_has_card_in_hand
    @game.deal_hand(@card)
    assert_equal(1, @player1.hand.count )
  end

  def test_player_gets_second_card
    @game.deal_hand(@card)
    @game.deal_hand(@card)
    assert_equal(2, @player1.hand.count )
  end

  

  # def test_which_player_wins
  #   @game.deal_hand(@card)
  #   @game.change_to_next_player
  #   @game.deal_hand(@card)
  #   @game.change_to_next_player
  #   @game.deal_hand(@card)
  #   @game.change_to_next_player
  #   @game.deal_hand(@card)
  #   @game.change_to_next_player
  #   @game.player1.
  # end



end