require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
# require 'pry'

class DeckTest < Minitest::Test
  def test_it_exists
    deck = Deck.new

    assert_instance_of Deck, deck
  end

  def test_it_has_cards
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    assert_equal [card1, card2, card3], deck.cards
  end

  def test_it_can_return_rank_of_card_at
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    assert_equal 12 , deck.rank_of_card_at(0)
    assert_equal 14, deck.rank_of_card_at(2)
  end

  def test_it_can_return_high_rank_cards
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    assert_equal [card1, card3], deck.high_ranking_cards
  end

  def test_it_can_calcuate_percent_high_ranking_cards
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    assert_equal 66.67, deck.percent_high_ranking_cards
  end

  def test_it_can_remove_card
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)
    deck.remove_card

    assert_equal [card2, card3], deck.cards
  end

  def test_remove_card_didnt_break_high_ranking_card

    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)
    deck.remove_card

    assert_equal [card3], deck.high_ranking_cards
  end

  def test_remove_card_didnt_break_percent_high_ranking_card

    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)
    deck.remove_card

    assert_equal 50.0, deck.percent_high_ranking_cards
  end

  def test_it_can_add_card
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    card4 = Card.new(:heart, '5', '5')
    deck.add_card(card4)

    assert_equal [card1, card2, card3, card4], deck.cards
  end

end
