require './scrabble'

describe '#score' do
  scrabble = Scrabble.new
  it 'score is 1 if word is "A" ' do
    expect(scrabble.score('A')).to eq(1)
end

describe '#score' do
  scrabble = Scrabble.new
    it 'score is 4 if word is "F" ' do
      expect(scrabble.score('F')).to eq(4)
    end
  end
end
