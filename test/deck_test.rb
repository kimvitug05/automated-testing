require_relative 'test_helper'

describe Deck do
  describe "constructor" do
    before do
      @deck = Deck.new
    end
    it "can create a new Deck" do
      expect(@deck).must_be_instance_of Deck
    end
  end
end
