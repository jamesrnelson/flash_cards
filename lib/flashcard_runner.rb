require './lib/guess.rb'
require './lib/deck.rb'
require './lib/card.rb'
require './lib/round'

card_1 = Card.new("What is the capital of Alaska?", "Juneau")
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
card_4 = Card.new("What is the air speed velocity of an unladen swallow?", "African or European?")
deck = Deck.new([card_1, card_2, card_3, card_4])
round = Round.new(deck)

puts "Welcome! You're playing with #{deck.count} cards."
40.times do print "-" end
puts " "

round.start

puts "This is card number #{round.card_num + 1} out of #{deck.count}."
