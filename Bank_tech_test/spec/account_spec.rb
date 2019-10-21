require './account'

describe 'statement' do
  it 'prints out an empty bank statement' do
    account = Account.new
    expect(account.statement).to eq"(date || credit || debit || balance)"
  end
end
