require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      two_of_diamonds = Card.new(2, :diamonds).to_s
      ten_of_hearts = Card.new(10, :hearts).to_s
      five_of_spades = Card.new(5, :spades).to_s
      nine_of_clubs = Card.new(9, :clubs).to_s

      expect(two_of_diamonds).must_equal "2 of diamonds"
      expect(ten_of_hearts).must_equal "10 of hearts"
      expect(five_of_spades).must_equal "5 of spades"
      expect(nine_of_clubs).must_equal "9 of clubs"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # The current implementation of to_s does not address this feature
      # Write the test, see it fail, then modify to_s to make it pass!
      # (Consider writing a helper method!)

      ace_of_diamonds = Card.new(1, :diamonds).to_s
      jack_of_hearts = Card.new(11, :hearts).to_s
      queen_of_spades = Card.new(12, :spades).to_s
      king_of_spades = Card.new(13, :spades).to_s

      expect(ace_of_diamonds).must_equal "Ace of diamonds"
      expect(jack_of_hearts).must_equal "Jack of hearts"
      expect(queen_of_spades).must_equal "Queen of spades"
      expect(king_of_spades).must_equal "King of spades"
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`

    end
  end

end
