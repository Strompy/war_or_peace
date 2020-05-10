require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

class Play
  attr_reader :player1,
              :player2,
              :round # For tracking turn count
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @round = 1
  end

  def start
    p "Welcome to War! (or Peace) This game will be played with 52 cards."
    p "The players today are #{@player1} and #{@player2}."
    p "Type 'GO' to start the game!"
    p "------------------------------------------------------------------"
    gets.chomp.upcase!
    #start game code
  end

  def play
    turn = Turn.new(@player1, @player2)
    winner = turn.winner

    if turn.type == :basic
      turn.pile_cards
      turn.award_spoils(winner)
      p "Turn #{round}: #{winner.name} won 2 cards"
    end
    if turn.type == :war
      turn.pile_cards
      turn.award_spoils(winner)
      p "Turn #{round}: #{winner.name} won 6 cards"
    end
    if turn.type == :mutually_assured_destruction
      turn.pile_cards
      p "Turn #{round}: *mutually assured destruction* 6 cards removed from play"
    end
    @round += 1
  end

end

# create gameplay loop

# puts on start:
# Welcome to War! (or Peace) This game will be played with 52 cards.
# The players today are Megan and Aurora.
# Type 'GO' to start the game!
# ------------------------------------------------------------------
