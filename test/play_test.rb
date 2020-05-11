require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/play'
require 'pry'

class PlayTest<Minitest::Test
  def test_it_exists
    skip
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)

    deck1 = Deck.new([card1, card2, card5, card8])
    deck2 = Deck.new([card3, card4, card6, card7])

    player1 = Player.new("Megan", deck1)
    player2 = Player.new("Aurora", deck2)

    play = Play.new(player1, player2)

    assert_instance_of Play, play
  end

  def test_start_method # what assertion?
    skip
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)

    deck1 = Deck.new([card1, card2, card5, card8])
    deck2 = Deck.new([card3, card4, card6, card7])

    player1 = Player.new("Megan", deck1)
    player2 = Player.new("Aurora", deck2)

    play = Play.new(player1, player2)

    play.start
  end

  def test_play_method_basic
skip
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)

    deck1 = Deck.new([card1, card2, card5, card8])
    deck2 = Deck.new([card3, card4, card6, card7])

    player1 = Player.new("Megan", deck1)
    player2 = Player.new("Aurora", deck2)

    play = Play.new(player1, player2)

    play.start
    play.play

    assert_equal 2, play.round
  end

  def test_play_method_war
skip
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)

    deck1 = Deck.new([card1, card2, card5, card8])
    deck2 = Deck.new([card4, card3, card6, card7])

    player1 = Player.new("Megan", deck1)
    player2 = Player.new("Aurora", deck2)

    turn = Turn.new(player1, player2)

    play = Play.new(player1, player2)

    play.start
    play.play

    assert_equal 4, play.round
  end

  def test_play_method_mutually_assured_destruction

    cards = []
    cards << card1 = Card.new(:heart, 'Ace', 14)
    cards << card2 = Card.new(:heart, 'King', 13)
    cards << card3 = Card.new(:heart, 'Queen', 12)
    cards << card4 = Card.new(:heart, 'Jack', 11)
    cards << card5 = Card.new(:heart, '10', 10)
    cards << card6 = Card.new(:heart, '9', 9)
    cards << card7 = Card.new(:heart, '8', 8)
    cards << card8 = Card.new(:heart, '7', 7)
    cards << card9 = Card.new(:heart, '6', 6)
    cards << card10 = Card.new(:heart, '5', 5)
    cards << card11 = Card.new(:heart, '4', 4)
    cards << card12 = Card.new(:heart, '3', 3)
    cards << card13 = Card.new(:heart, '2', 2)
    cards << card14 = Card.new(:diamond, 'Ace', 14)
    cards << card15 = Card.new(:diamond, 'King', 13)
    cards << card16 = Card.new(:diamond, 'Queen', 12)
    cards << card17 = Card.new(:diamond, 'Jack', 11)
    cards << card18 = Card.new(:diamond, '10', 10)
    cards << card19 = Card.new(:diamond, '9', 9)
    cards << card20 = Card.new(:diamond, '8', 8)
    cards << card21 = Card.new(:diamond, '7', 7)
    cards << card22 = Card.new(:diamond, '6', 6)
    cards << card23 = Card.new(:diamond, '5', 5)
    cards << card24 = Card.new(:diamond, '4', 4)
    cards << card25 = Card.new(:diamond, '3', 3)
    cards << card26 = Card.new(:diamond, '2', 2)
    cards << card27 = Card.new(:club, 'Ace', 14)
    cards << card28 = Card.new(:club, 'King', 13)
    cards << card29 = Card.new(:club, 'Queen', 12)
    cards << card30 = Card.new(:club, 'Jack', 11)
    cards << card31 = Card.new(:club, '10', 10)
    cards << card32 = Card.new(:club, '9', 9)
    cards << card33 = Card.new(:club, '8', 8)
    cards << card34 = Card.new(:club, '7', 7)
    cards << card35 = Card.new(:club, '6', 6)
    cards << card36 = Card.new(:club, '5', 5)
    cards << card37 = Card.new(:club, '4', 4)
    cards << card38 = Card.new(:club, '3', 3)
    cards << card39 = Card.new(:club, '2', 2)
    cards << card40 = Card.new(:spade, 'Ace', 14)
    cards << card41 = Card.new(:spade, 'King', 13)
    cards << card42 = Card.new(:spade, 'Queen', 12)
    cards << card43 = Card.new(:spade, 'Jack', 11)
    cards << card44 = Card.new(:spade, '10', 10)
    cards << card45 = Card.new(:spade, '9', 9)
    cards << card46 = Card.new(:spade, '8', 8)
    cards << card47 = Card.new(:spade, '7', 7)
    cards << card48 = Card.new(:spade, '6', 6)
    cards << card49 = Card.new(:spade, '5', 5)
    cards << card50 = Card.new(:spade, '4', 4)
    cards << card51 = Card.new(:spade, '3', 3)
    cards << card52 = Card.new(:spade, '2', 2)

    cards.shuffle!

    deck = Deck.new(cards)

    split_deck1 = deck.cards.slice(0..25)
    split_deck2 = deck.cards.slice(26..51)

    deck1 = Deck.new(split_deck1)
    deck2 = Deck.new(split_deck2)

    player1 = Player.new("Megan", deck1)
    player2 = Player.new("Aurora", deck2)

    turn = Turn.new(player1, player2)

    play = Play.new(player1, player2)

    play.start
    # play.play

    assert_equal 2, play.round
  end

end
