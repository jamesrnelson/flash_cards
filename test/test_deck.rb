require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess.rb'
require './lib/deck.rb'
require './lib/card.rb'

class DeckTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
  end

  def test_deck_class_exists
    deck = Deck.new([@card_1, @card_2, @card_3])
    assert_instance_of Deck, deck
  end

  def test_cards_method_exists
    deck = Deck.new([@card_1, @card_2, @card_3])
    assert_equal [@card_1, @card_2, @card_3], deck.cards
  end

  def test_count_method_works
    deck = Deck.new([@card_1, @card_2, @card_3])
    assert_equal 3, deck.count
  end 
end
