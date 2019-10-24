require './scrabble'

describe '#score' do
  it 'returns a score of 0' do
    scrabble = Scrabble.new
    expect(scrabble.score).to eq(0)
  end
end
