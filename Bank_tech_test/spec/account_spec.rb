require './account'

describe '#credit' do
  it 'client deposits 1000.00 to their account' do
    account = Account.new
    date = Time.new.strftime("%d/%m/%Y")
    expect(account.credit(1000.00)).to eq("#{date} || 1000.00 || || 1000.00")
  end

  it 'client deposits 1000.00 then 2000.00 to their account' do
    account = Account.new
    date = Time.new.strftime("%d/%m/%Y")
    account.credit(1000.00)
    expect(account.credit(2000.00)).to eq("#{date} || 2000.00 || || 3000.00")
  end
end

describe '#debit' do
  it 'client withdraws 500.00 from their account' do
    account = Account.new
    date = Time.new.strftime("%d/%m/%Y")
    account.credit(1000.00)
    account.credit(2000.00)
    expect(account.debit(500.00)).to eq("#{date} || || 500.00 || 2500.00")
  end
end

describe '#print_statement' do
  it 'prints out a statement with no transactions' do
    account = Account.new
  expect{ account.print_statement }.to output("date || credit || debit || balance\n").to_stdout
  end

  it 'prints out a statement after one transaction' do
    account = Account.new
    date = Time.new.strftime("%d/%m/%Y")
    account.credit(1000.00)
    expect{ account.print_statement }.to output("date || credit || debit || balance\n#{date} || 1000.00 || || 1000.00\n").to_stdout
  end
end
