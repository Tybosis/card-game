require 'card'

class Deck
  attr_accessor :cards
  SUITS = %w('Hearts', 'Spades', 'Clubs', 'Diamonds')
  def initialize
    @cards = []
    SUITS.each do |suit|
      (1..13).each do |rank|
        @cards << Card.new(suit: suit, rank: rank)
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end

  def draw(n = 1)
    hand = []
    n.times { hand << @cards.shift }
    hand
  end

  def count
    @cards.count
  end
end
