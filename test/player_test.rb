require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require 'pry'

class PlayerTest < Minitest::Test
  def test_it_exists
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    player = Player.new('Clarissa', deck)

    assert_instance_of Player, player
  end

  def test_has_lost?
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    player = Player.new('Clarissa', deck)

    # assert_equal true, player.has_lost?

    deck.remove_card
    assert_equal [card2, card3], deck.cards
    # assert_equal true, player.has_lost?
    deck.remove_card
    assert_equal [card3], deck.cards
    # assert_equal true, player.has_lost?
    deck.remove_card
    assert_equal [], deck.cards
    assert_equal true, player.has_lost?
  end
end


# test it has attributes name, deck
# test it has lost after removing cards (should lose on empty deck)
