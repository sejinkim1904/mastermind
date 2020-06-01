class Code
  attr_reader :pegs

  def initialize
    @pegs = random_pegs
  end

  def random_pegs
    colors = ["red", "green", "blue", "yellow"]

    colors.map do |color|
      Peg.new(colors.sample)
    end
  end
end
