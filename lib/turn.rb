class Turn
  attr_reader :guess, :correct_elements, :correct_positions

  def initialize(guess)
    @guess = guess
    @correct_elements = 0
    @correct_positions = 0
  end
end
