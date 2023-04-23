require_relative 'card'

# プレイヤークラス
class Player
  attr_reader :hand

  def initialize
    @hand = []
  end

  def draw_card(card)
    @hand << card
  end

  def total
    sum = 0
    aces = 0

    @hand.each do |card|
      sum += card.value
      aces += 1 if card.rank == 'A'
    end

    aces.times do
      sum -= 10 if sum > 21
    end

    sum
  end
end