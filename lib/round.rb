require './lib/guess.rb'
require './lib/deck.rb'
require './lib/card.rb'
require 'pry'

class Round
  attr_reader :deck, :guesses, :card_num, :player_response

  def initialize(deck)
    @deck = deck
    @guesses = []
    @card_num = 0
    @player_response = []
    @number_correct = 0
  end

  def current_card
    deck.cards[@card_num]
  end

  def record_guess(response)
    guess = Guess.new(response, current_card)
    guesses << guess.response
    @number_correct += 1 if guess.correct?
    guess
  end

  def feedback
    guesses[@card_num] == guess.correct
  end

  def start

  end

  def percent_correct

  end

end
