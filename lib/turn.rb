class Turn
  attr_reader :guess, :correct_elements, :correct_positions, :code

  def initialize(guess, code)
    @guess = guess.chars
    @code = split_pegs(code)
    @correct_elements = 0
    @correct_positions = 0
  end

  def split_pegs(code)
    code.pegs.map do |peg|
      peg.color[0]
    end
  end

  def analyze
    check_positions
    check_elements
  end

  def check_elements
    @guess.each do |element|
      if @code.include? element
        @correct_elements += 1
        @code.delete_at(@code.index(element))
      end
    end
  end

  def check_positions
    @guess.each_with_index do |element, index|
      if element == @code[index]
        @correct_positions += 1
      end
    end
  end
end
