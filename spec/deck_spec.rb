require 'spec_helper'
require 'deck'

describe Deck do
  before(:each) do
    @deck = Deck.new
  end

  it 'initializes with 52 cards' do
    @deck.cards.size.must_equal 52
  end

  it 'responds to a shuffle method' do
    @deck.must_respond_to :shuffle!
  end

  it 'responds to a draw method' do
    @deck.must_respond_to :draw
  end

  it 'draw method returns top card from the deck' do
    top_card = @deck.cards[0]
    @deck.draw.must_equal [top_card]
  end

  it 'draw method can return more than one card' do
    @deck.draw(5).size.must_equal 5
  end

  it 'responds to a count method' do
    @deck.must_respond_to :count
  end

  it 'count returns cards left in deck' do
    @deck.count.must_equal 52
    @deck.draw
    @deck.count.must_equal 51
  end

  it 'returns a string if a player tries to draw too many cards' do
    @deck.draw(55).must_match "aren't enough cards"
    @deck = Deck.new
    @deck.draw(50)
    @deck.draw(3).must_match "aren't enough cards"
  end
end
