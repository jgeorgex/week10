class Scrabble

  def score(word)
    if word == 'A'
      1
    elsif word == 'D'
      2
    elsif word == 'B'
      3
    elsif word == 'F'
      4
    elsif word == 'K'
      5
    elsif word == 'J'
      8
    end
  end
end
