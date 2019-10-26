class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    word_score = []
    @word.each_char { |letter|
    if letter == 'A'
      word_score << 1
    elsif
      letter == 'F'
      word_score << 4
    else
      word_score << 0
    end
    }
    word_score.sum
  end
end
