class Card
  attr_reader :suit, :rank
  def initialize(args)
    @suit = args[:suit]
    @rank = args[:rank]
  end
end
