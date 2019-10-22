require './account'

describe '#credit' do
  it 'client deposits 1000.00 to their account' do
    account = Account.new
    expect(account.credit("10/01/2012 ", 1000.00)).to eq("10/01/2012 || 1000.00 || || 1000.00")
  end

  it 'client deposits 1000.00 then 2000.00 to their account' do
    account = Account.new
    account.credit("10/01/2012 ", 1000.00)
    expect(account.credit("13/01/2012 ", 2000.00)).to eq("13/01/2012 || 2000.00 || || 3000.00")
  end
end

describe '#debit' do
  it 'client withdraws 500.00 from their account' do
    account = Account.new
    account.credit("10/01/2012 ", 1000.00)
    account.credit("13/01/2012 ", 2000.00)
    expect(account.debit("14/01/2012 ", 500.00)).to eq("14/01/2012 || || 500.00 || 2500.00")
  end

end
