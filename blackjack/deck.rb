require_relative 'card'

class Deck
  SUITS = ["♥", "♦", "♣", "♠"]
  RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "A", "J", "Q", "K"]

  def initialize
    @cards = generate_deck.shuffle
  end

  def generate_deck
    deck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        deck << Card.new(suit, rank)
      end
    end
    deck
  end

  def draw
    @cards.pop
  end
end
