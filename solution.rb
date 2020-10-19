require 'pry'

class Deck

    attr_reader :cards, :rank, :suit

    def initialize
        @cards = []
        for suit in ["Hearts", "Clubs", "Diamonds", "Spades"] do     
        for rank in ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] do
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        # @cards.sample.index
        # binding.pry
        # @cards.sample.delete
        # @cards.sample
        # @cards.sample
        @cards.delete_at(rand(@cards.length))
        # @cards.size -= 1
    end

end

class Card

    attr_reader :rank, :suit

    def initialize (suit , rank)
        @suit, @rank = suit, rank 
        # @@all << self
    end
    

end
