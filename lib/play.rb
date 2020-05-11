require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require 'pry'

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
    p "The players today are #{@player1.name} and #{@player2.name}."
    p "Type 'GO' to start the game!"
    p "------------------------------------------------------------------"
    gets.chomp.upcase!
    play
  end

  def play
    turn = Turn.new(@player1, @player2)
    loop do
      winner = turn.winner

      if turn.type == :basic
        turn.pile_cards
        turn.award_spoils(winner)
        p "Turn #{round}: #{winner.name} won 2 cards"
      elsif turn.type == :war
        turn.pile_cards
        turn.award_spoils(winner)
        p "Turn #{round}: #{winner.name} won 6 cards"
      elsif turn.type == :mutually_assured_destruction
      turn.pile_cards
        p "Turn #{round}: *mutually assured destruction* 6 cards removed from play"
      end
      @round += 1
      
      break if @round == 1000000 || player1.has_lost? || player2.has_lost?
    end
    endgame
  end

  def endgame
    if @round == 1000000
      p "All right. We'll call it a draw"
    elsif player1.has_lost?
      p "*~*~*~* #{player2.name} has won the game! *~*~*~*"
    else
      p "*~*~*~* #{player1.name} has won the game! *~*~*~*"
    end
  end
end




# create gameplay loop
