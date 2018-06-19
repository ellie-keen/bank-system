class Transaction

  attr_reader :amount, :date, :balance, :type

  def initialize(amount, balance, type)
    @amount = amount
    @date = Time.now.strftime("%d/%m/%Y")
    @balance = balance
    @type = type
  end

end
