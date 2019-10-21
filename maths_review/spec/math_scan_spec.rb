require './math_scan'

describe 'scan paper ' do
  it 'Input is 1 + 1, returns ["1 + 1", 2]' do
    expect(scan_paper("1 + 1")).to eq(["1 + 1", 2])
  end

  it 'Input is 1 * 1 returns ["1 + 1", 1]' do
    expect(scan_paper("1 * 1")).to eq(["1 * 1", 1])
  end
end
