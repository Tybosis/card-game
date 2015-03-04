require 'spec_helper'
require 'card'

describe Card do
  it 'intitializes with a suit and rank' do
    card = Card.new(suit: "Spades", rank: 2)
    card.suit.must_equal "Spades"
    card.rank.must_equal 2
  end
end
