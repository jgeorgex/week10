require './is_year_a_leap_year'

describe '#is_year_a_leap_year' do
  it '2017 is not a leap year' do
    expect(is_year_a_leap_year(2017)).to eq("2017 is NOT a leap year")
  end

  it '2018 is not a leap year' do
    expect(is_year_a_leap_year(2018)).to eq("2018 is NOT a leap year")
  end

  it '400 is a leap year' do
    expect(is_year_a_leap_year(400)).to eq("400 IS a leap year")
  end

  it '2000 is a leap year' do
    expect(is_year_a_leap_year(2000)).to eq("2000 IS a leap year")
  end

  it '1700 is not a leap year' do
    expect(is_year_a_leap_year(1700)).to eq("1700 is NOT a leap year")
  end


end
