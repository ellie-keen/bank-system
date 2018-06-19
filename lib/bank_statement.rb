class BankStatement

  HEADER = "date || credit || debit || balance\n"

  def print_statement(bank_account)
    statement = HEADER
    bank_account.transactions.each do |transaction|
      date = "#{transaction.date} ||"
      credit_or_debit = check_type(transaction)
      balance = " #{'%.2f' % transaction.balance}\n"
      statement += date + credit_or_debit + balance
    end
    statement
  end

  private

  def check_type(transaction)
    transaction.type == 'withdraw' ? " || #{'%.2f' % transaction.amount} ||" :
      " #{'%.2f' % transaction.amount} || ||"
  end

end
