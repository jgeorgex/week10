require './scrabble'

describe '#score' do

  it 'returns a score of 0 when the word is " "' do
    scrabble = Scrabble.new('')
    expect(scrabble.score).to eq(0)
  end

  it 'returns a score of 1 when the word is "a"' do
    scrabble = Scrabble.new('a')
    expect(scrabble.score).to eq(1)
  end

  it 'returns a score of 4 when the word is "f"' do
    scrabble = Scrabble.new('f')
    expect(scrabble.score).to eq(4)
  end

  it 'returns a score of 5 when the word is "af"' do
    scrabble = Scrabble.new('af')
    expect(scrabble.score).to eq(5)
  end

  it 'returns a score of 33 when the word is "adbfkjq"' do
    scrabble = Scrabble.new('adbfkjq')
    expect(scrabble.score).to eq(33)
  end

  it 'returns a score of 34 when the word is "aadbfkjq"' do
    scrabble = Scrabble.new('aadbfkjq')
    expect(scrabble.score).to eq(34)
  end

end
