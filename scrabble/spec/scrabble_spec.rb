require './scrabble'

describe '#score' do
  it 'returns a score of 0' do
    scrabble = Scrabble.new('a')
    expect(scrabble.score).to eq(1)
  end
end
