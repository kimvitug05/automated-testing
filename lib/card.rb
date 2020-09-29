VALID_SUITS = [:hearts, :spades, :clubs, :diamonds]


class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    raise ArgumentError.new("Not a valid value.") if value < 1 || value > 13
    raise ArgumentError.new("Not a valid suit.") if !VALID_SUITS.include?(suit)
  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end
end
