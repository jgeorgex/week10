class Account

def initialize
@balance = 0
@deposits = []
@withdrawals = []
end

def credit(date, credit_amount)
  @deposits << credit_amount
  "#{date}|| #{credit_amount}0 || || #{update_balance}0"
end

def update_balance
  @balance = @deposits.sum - @withdrawals.sum
end

def debit(date, debit_amount)
  @withdrawals << debit_amount
  "#{date}|| || #{debit_amount}0 || #{update_balance}0"
end

end
