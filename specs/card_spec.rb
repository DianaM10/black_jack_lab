require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../card')


class TestCard < Minitest::Test

  def setup
    @card = Card.new
  end

  def test_does_card_deal_number
    range === 1..10
    assert_equal(, @card.deal)
  end




end