require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'
require './lib/guess.rb'

class GuessTest < Minitest::Test
  def test_guess_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_instance_of Guess, guess

  end

  def test_brings_card
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_instance_of Card, guess.card
  end

  def test_has_response
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "Juneau", guess.response
  end

  def test_correct
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert guess.correct?
  end

  def test_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "Correct!", guess.feedback
  end

  def test_another_card
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    assert_equal "Saturn", guess.response
    assert_equal false, guess.correct?
    assert_equal "Incorrect.", guess.feedback
  end

end
