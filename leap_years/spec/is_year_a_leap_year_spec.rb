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

  it '1800 is not a leap year' do
    expect(is_year_a_leap_year(1800)).to eq("1800 is NOT a leap year")
  end

  it '1900 is not a leap year' do
    expect(is_year_a_leap_year(1900)).to eq("1900 is NOT a leap year")
  end

  it '2100 is not a leap year' do
    expect(is_year_a_leap_year(2100)).to eq("2100 is NOT a leap year")
  end

  it '2008 is a leap year' do
    expect(is_year_a_leap_year(2008)).to eq("2008 IS a leap year")
  end

  it '2012 is a leap year' do
    expect(is_year_a_leap_year(2012)).to eq("2012 IS a leap year")
  end

end
