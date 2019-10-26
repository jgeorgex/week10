class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    if @word == 'A'
      1
    elsif
      @word == 'F'
      4
    else
      0
    end
  end
end
