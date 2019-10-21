require './account'

describe 'statement' do
  it 'prints out bank statement' do
    account = Account.new
    expect(account.statement).to eq("date || credit || debit || balance")
  end

  describe 'credit' do
    it 'credits account with 1000.00' do
      account = Account.new
      @credit = []
      expect(account.deposit(1000.00)).to eq(@credit = [1000.00])
    end

    it 'credits account with 1000.00 and 2000.00' do
      account = Account.new
      @credit = []
      account.deposit(1000.00)
      expect(account.deposit(2000.00)).to eq(@credit = [1000.00, 2000.00])
    end
  end

  describe 'debit' do
    it 'debits 500.00 from account' do
      account = Account.new
      @debit = []
      expect(account.debit(500)).to eq(@debit = [500.00])
    end
  end

end
