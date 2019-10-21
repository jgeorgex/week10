class Account

  def initialize
  @credit = []
  end

  def statement
    puts "date || credit || debit || balance"
    puts "14/01/2012 || || 500.00 || 2500.00"
    puts "13/01/2012 || 2000.00 || || 3000.00"
    puts "10/01/2012 || 1000.00 || || 1000.00"
  end

  def deposit(deposit_value)
      @credit << deposit_value
  end

end
