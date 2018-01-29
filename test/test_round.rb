require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess.rb'
require './lib/deck.rb'
require './lib/card.rb'
require './lib/round.rb'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    @deck = Deck.new([@card_1, @card_2, @card_3])
  end

  def test_round_class
    round = Round.new(@deck)
    assert_instance_of Round, round
  end

  def test_deck_method

    round = Round.new(@deck)
    assert_equal @deck, round.deck
  end

  def test_guesses_storage

    round = Round.new(@deck)
    assert_equal [], round.guesses
  end

  def test_current_card_method

    round = Round.new(@deck)
    assert_equal @card_1, round.current_card

  end

  def test_record_guess_method

    round = Round.new(@deck)
    guess = Guess.new("Juneau", @card_1)
    recorded_guess = round.record_guess("Juneau")
    assert_instance_of Guess, recorded_guess
    assert_equal "Juneau", recorded_guess.response
  end

  def test_guesses_storage_increases

    round = Round.new(@deck)
    recorded_guess = round.record_guess("Juneau")
    assert_equal 1, round.guesses.count

  end

  def test_feedback_method

    round = Round.new(@deck)
    recorded_guess = round.record_guess("Juneau")
    assert_equal "Correct!", round.guesses.first.feedback

  end

  def test_number_correct_method
    skip
    round = Round.new(@deck)
    number_correct = round.number_correct
    assert_equal 0, number_correct

  end

  def test_current_card_changes
    skip
    round = Round.new(deck)

  end

  def test_record_guess_method_again
    skip
    round = Round.new(deck)

  end

  def test_guesses_storage_still_increases
    skip
    round = Round.new(deck)

  end

  def test_feedback_method_again
    skip
    round = Round.new(deck)

  end

  def test_number_correct_method_again
    skip
    round = Round.new(deck)

  end

  def test_percent_correct_method
    skip
    round = Round.new(deck)

  end

end
