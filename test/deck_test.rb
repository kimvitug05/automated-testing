require_relative 'test_helper'

describe Deck do
  before do
    @deck = Deck.new
  end

  describe "constructor" do
    it "can create a new Deck" do
      expect(@deck).must_be_instance_of Deck
    end
  end

  describe "draw method" do
    it "must respond to draw method" do
      expect(@deck).must_respond_to :draw
    end
  end
end
