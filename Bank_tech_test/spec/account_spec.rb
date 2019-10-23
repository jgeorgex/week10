require './account'

describe '#credit' do
  it 'client deposits 1000.00 to their account' do
    account = Account.new
    expect(account.credit(1000.00)).to eq("23/10/2019 || 1000.00 || || 1000.00")
  end

  it 'client deposits 1000.00 then 2000.00 to their account' do
    account = Account.new
    account.credit(1000.00)
    expect(account.credit(2000.00)).to eq("23/10/2019 || 2000.00 || || 3000.00")
  end
end

describe '#debit' do
  it 'client withdraws 500.00 from their account' do
    account = Account.new
    account.credit(1000.00)
    account.credit(2000.00)
    expect(account.debit(500.00)).to eq("23/10/2019 || || 500.00 || 2500.00")
  end
end

describe '#print_statement' do
  it 'prints out a statement with no transactions' do
    account = Account.new
    expect(account.print_statement).to eq("date || credit || debit || balance")
  end

  it 'prints out a statement after one transaction' do
    account = Account.new
    account.credit(1000.00)
    expect(account.print_statement).to eq("date || credit || debit || balance, 10/01/2012 || 1000.00 || || 1000.00")
  end
end
