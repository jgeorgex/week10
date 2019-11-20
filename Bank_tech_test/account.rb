class Account

  def initialize
    @balance = 0
    @deposits = []
    @withdrawals = []
    @statement = []
    @date = Time.new.strftime("%d/%m/%Y")
  end

  def credit(credit_amount)
    @deposits << credit_amount
    date = @date
    credit_transaction = "#{date} || #{credit_amount}0 || || #{update_balance}0"
    @statement << credit_transaction
    return credit_transaction
  end

  def update_balance
    @balance = @deposits.sum - @withdrawals.sum
  end

  def debit(debit_amount)
    @withdrawals << debit_amount
    date = @date
    debit_transaction = "#{date} || || #{debit_amount}0 || #{update_balance}0"
    @statement << debit_transaction
    return debit_transaction
  end

  def print_statement
    puts "date || credit || debit || balance"
      @statement.reverse.each do |transaction|
      puts transaction
      end
  end

end
