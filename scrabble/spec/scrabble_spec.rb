require './scrabble'

describe '#score' do
  scrabble = Scrabble.new
  it 'score is 0' do
    expect(scrabble.score).to eq(0)
  end
end
