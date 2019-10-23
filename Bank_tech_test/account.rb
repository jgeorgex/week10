class Account

  def initialize
    @balance = 0
    @deposits = []
    @withdrawals = []
    @statement = ["date || credit || debit || balance"]
  end

  def credit(date, credit_amount)
    @deposits << credit_amount
    time = Time.new
    time = time.strftime("%d/%m/%Y")
    credit_transaction = "#{time} || #{credit_amount}0 || || #{update_balance}0"
    @statement << credit_transaction
    return credit_transaction
  end

  def update_balance
    @balance = @deposits.sum - @withdrawals.sum
  end

  def debit(date, debit_amount)
    @withdrawals << debit_amount
    time = Time.new
    time = time.strftime("%d/%m/%Y")
    debit_transaction = "#{time} || || #{debit_amount}0 || #{update_balance}0"
    @statement << debit_transaction
    return debit_transaction
  end

  def print_statement
    @statement.each do |transaction|
      puts transaction
    end
  end
end
