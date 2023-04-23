class Card
    attr_reader :suit, :rank
  
    def initialize(suit, rank)
      @suit = suit
      @rank = rank
    end
  
    def value
      case @rank
      when "10", "J", "Q", "K"
        10
      when "A"
        11
      else
        @rank.to_i
      end
    end
  end