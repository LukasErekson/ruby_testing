# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :min, :max, :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  ##
  # Makes a guess by returning the average of min and max
  def make_guess
    @guess = (max + min) / 2
  end

  ##
  # Checks to see if the game is over. Returns true when guess == answer
  def game_over?
    @guess == @answer
  end

  ##
  # Updates the range of what the number can be based on the value of
  # guess.
  def update_range
    @min = [@guess + 1, @max].min if @guess < @answer

    @max = [@guess - 1, @min].max if @guess >= @answer
    
    return
  end

end
