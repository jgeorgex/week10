class Account

  def initialize
  @credit = []
  @debit = []
  end

  def statement
    "date || credit || debit || balance"
  end

  def deposit(deposit_value)
      @credit << deposit_value
  end

  def debit(debit_value)
    @debit << debit_value
  end

end
