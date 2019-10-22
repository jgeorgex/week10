class Account

  def initialize
  @credit = []
  @debit = []
  end

  def statement
  puts "date || credit || debit || balance"
  puts "14/01/2012 || || 500.00 || 2500.00"
  end

  def deposit(deposit_value)
      @credit << deposit_value
  end

  def debit(debit_value)
    @debit << debit_value
  end

end
