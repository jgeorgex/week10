class Scrabble

  def initialize(word)
    @word = word.downcase
  end

  def score
    word_score = []
    @word.each_char { |letter|
    if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" || letter == "l" || letter == "n" || letter == "r" || letter == "s" || letter == "t"
      word_score << 1
    elsif
      letter == "d" || letter == "g"
      word_score << 2
    elsif
      letter == "b" || letter == "c" || letter == "m" || letter == "p"
      word_score << 3
    elsif
      letter == "f" || letter == "h" || letter == "v" || letter == "w" || letter == "y"
      word_score << 4
    elsif
      letter == "k"
      word_score << 5
    elsif
      letter == "j" || letter == "x"
      word_score << 8
    elsif
      letter == "q" || letter == "z"
      word_score << 10
    else
      word_score << 0
    end
    }
    word_score.sum
  end

end
