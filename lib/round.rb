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

  def record_guess(guess)
    Guess.new(guess, current_card)
    # player_response << guess if guess.correct?
    # @answered_correctly += 1 if guess.correct?
    # @card_num += 1
  end

  def feedback
    guess.feedback
  end

  def start

  end

  def percent_correct 

  end

end
