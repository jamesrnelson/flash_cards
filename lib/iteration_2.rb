class Card
  attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end

class Guess
  attr_reader :card

  def initialize(attempt, card)
    @card = card
  end

end

card_1 = Card.new("What is the capital of Alaska?", "Juneau")
