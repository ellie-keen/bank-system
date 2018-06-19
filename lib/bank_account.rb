class BankAccount
  DEFAULT_BALANCE = 0
  attr_reader :balance, :transactions

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def deposit(amount)
    add_to_balance(amount)
    submit_transaction(amount)
  end

  def withdraw(amount)
    remove_from_balance(amount)
    submit_transaction(amount)
  end

  private

  def negative?(amount)
    amount < DEFAULT_BALANCE
  end

  def insufficient_funds?(amount)
    amount > @balance
  end

  def submit_transaction(amount)
    @transactions << "#{amount}," + " #{Date.today}," + " #{@balance}"
  end

  def add_to_balance(amount)
    raise 'Enter an amount more than 0' if negative?(amount)
    @balance += amount
  end

  def remove_from_balance(amount)
    raise 'Insufficient funds' if insufficient_funds?(amount)
    @balance -= amount
  end

end
