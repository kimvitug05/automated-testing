
# deck.rb

require_relative 'card'

class Deck

  def initialize
    @card = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @card << Card.new(value, suit)
      end
    end
  end

  def draw
    card = @card.pop
    return card
  end

  def shuffle
    @card.shuffle
  end
end
