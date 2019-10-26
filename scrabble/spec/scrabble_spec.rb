require './scrabble'

describe '#score' do

  it 'returns a score of 1 when the word is "A"' do
    scrabble = Scrabble.new('A')
    expect(scrabble.score).to eq(1)
  end

  it 'returns a score of 4 when the word is "F"' do
    scrabble = Scrabble.new('F')
    expect(scrabble.score).to eq(4)
  end
end
