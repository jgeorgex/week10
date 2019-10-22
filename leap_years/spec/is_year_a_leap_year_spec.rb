require './is_year_a_leap_year'

describe '#is_year_a_leap_year' do
  it '2017 is not a leap year' do
    expect(is_year_a_leap_year(2017)).to eq("2017 is NOT a leap year")

  end
end
