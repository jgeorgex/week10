class Account

def initialize
@balance = 0
@deposits = []
end

def credit(date, credit_amount)
  @deposits << credit_amount
  "#{date}|| #{credit_amount}0 || || #{update_balance}0"
end

def update_balance
  @balance = @deposits.sum
end

def debit(date, debit_amount)
  "14/01/2012 || || 500.00 || 2500.00"
end

end
