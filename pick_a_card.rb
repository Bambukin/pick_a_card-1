# frozen_string_literal: true

require_relative 'lib/deck'

puts 'Pick a Card.'
puts

deck = Deck.new.shuffle

puts 'How many cards do you pick?'
number = $stdin.gets.to_i

puts
number.times do
  puts deck.pop_a_card
end
