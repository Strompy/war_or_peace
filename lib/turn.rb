class Turn
attr_reader :player1,
            :player2,
            :spoils_of_war

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end

end

# A turn is initialized with player1 and player2
# A turn has attributes for player1, player2, spoils_of_war
# types of turns (method?): basic, war, mutually_assured_destruction
# create basic (method?). rank_of_card_at(0) is not equal
# create war (method?). rank_of_card_at(0) are equal
# create mutually_assured_destruction (method?). rank_of_card_at(0) and rank_of_card_at(2) are both equal
# create winner method, results based on turn type
# create pile_cards meethod. send cards from player's decks to @spoils_of_war
# create award_spoils method. add cards from @spoils_of_war to the winner of the turn
