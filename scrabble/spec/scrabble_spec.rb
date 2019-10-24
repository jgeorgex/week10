require './scrabble'

describe '#score' do

  it 'score is 1 if word is "A" ' do
    scrabble = Scrabble.new
    expect(scrabble.score('A')).to eq(1)
  end

  it 'score is 4 if word is "F" ' do
    scrabble = Scrabble.new
    expect(scrabble.score('F')).to eq(4)
  end


  it 'score is 5 if word is "K" ' do
    scrabble = Scrabble.new
    expect(scrabble.score('K')).to eq(5)
  end
end
