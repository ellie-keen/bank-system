class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    raise 'Enter an amount more than 0' if negative?(amount)
    @balance += amount
    submit_transaction(amount)
  end

  def withdraw(amount)
    raise 'Insufficient funds' if insufficient_funds?(amount)
    @balance -= amount
  end

  private

  def negative?(amount)
    amount < 0
  end

  def insufficient_funds?(amount)
    amount > @balance
  end

  def submit_transaction(amount)
    @transactions << "#{amount}," + " #{Time.now.strftime("%d/%m/%Y")}," + " #{@balance}"
  end

end
