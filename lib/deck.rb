# frozen_string_literal: true

require_relative 'card'
class Deck
  def initialize
    @cards = []

    Card::VALUES.each do |value|
      Card::SUITS.each do |suit|
        @cards << Card.new(value, suit)
      end
    end

    2.times do
      @cards << Card.new(nil, nil, joker: true)
    end
  end

  def shuffle
    @cards.shuffle!

    self
  end

  def get_a_card
    @cards.sample
  end

  def pop_a_card
    @cards.pop
  end
end
