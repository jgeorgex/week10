require './scrabble'

describe '#score' do
  scrabble = Scrabble.new
  it 'score is 1 if word is "a" ' do
    expect(scrabble.score('a')).to eq(1)
end

describe '#score' do
  scrabble = Scrabble.new
    it 'score is 4 if word is "f" ' do
      expect(scrabble.score('f')).to eq(4)
    end
  end
end
