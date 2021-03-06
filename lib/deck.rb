class Deck

  attr_reader :cards

  def initialize(cards = [])
    @cards = cards
    @high_cards = []
  end

  def rank_of_card_at(index)
    if cards.count < 3
      0
    else
      cards[index].rank
    end
  end

  def high_ranking_cards
  high_cards = cards.select do |card|
    card.rank >= 11
    end
  end

  def percent_high_ranking_cards
    percent = (high_ranking_cards.count.to_f / cards.count.to_f) * 100
    percent.round(2)
  end

  def remove_card
    cards.shift
  end

  def add_card(card)
    cards.push(card)
  end

end
