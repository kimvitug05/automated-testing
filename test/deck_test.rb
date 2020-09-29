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

    it 'returns a Card' do
      expect(@deck.draw).must_be_instance_of Card
    end

    it 'draws 52 cards from an initial deck' do
      52.times do
        expect(@deck.draw).must_be_instance_of Card
      end
    end

    it 'will return nil for drawing an empty Deck' do
      52.times do
        expect(@deck.draw).must_be_instance_of Card
      end

      expect(@deck.draw).must_be_nil
    end
  end

  describe "shuffle" do
    it 'responds to shuffle' do
      expect(@deck).must_respond_to :shuffle
    end

  end
end
