class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    raise "Enter an amount more than 0" if negative?(amount)
    @balance += amount
  end

  private

  def negative?(amount)
    amount < 0
  end
end
