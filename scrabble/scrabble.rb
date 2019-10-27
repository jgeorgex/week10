class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    word_score = []
    @word.each_char { |letter|
    if letter == "a" || letter == "e"
      word_score << 1
    elsif
      letter == "d"
      word_score << 2
    elsif
      letter == "b"
      word_score << 3
    elsif
      letter == "f"
      word_score << 4
    elsif
      letter == "k"
      word_score << 5
    elsif
      letter == "j"
      word_score << 8
    elsif
      letter == "q"
      word_score << 10
    else
      word_score << 0
    end
    }
    word_score.sum
  end

end
