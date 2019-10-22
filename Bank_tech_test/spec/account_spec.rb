require './account'

describe '#credit' do
  it 'client deposits 1000.00 to their account' do
    account = Account.new
    expect(account.credit(1000.00, "10/01/2012")).to eq("10/01/2012 || 1000.00 || || 1000.00")
  end
end
