VALID_SUITS = [:hearts, :spades, :clubs, :diamonds]
FACE_CARDS = { 1 => "Ace", 11 => "Jack", 12 => "Queen", 13 => "King" }


class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    raise ArgumentError.new("Not a valid value.") if value < 1 || value > 13
    raise ArgumentError.new("Not a valid suit.") if !VALID_SUITS.include?(suit)
  end

  def to_s
    if FACE_CARDS.key? @value
      @value = FACE_CARDS[value]
    end

    return "#{value} of #{suit.to_s}"
  end
end
