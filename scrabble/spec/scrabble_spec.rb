require './scrabble'

describe '#score' do
  scrabble = Scrabble.new
  it 'score is 1 if woprd is "a" ' do
    expect(scrabble.score('a')).to eq(1)
  end
end
