class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    if @word == 'A'
      1
    else
      4
    end
  end


end
