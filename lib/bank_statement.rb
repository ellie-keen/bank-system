class BankStatement
  HEADER = "date || credit || debit || balance\n".freeze

  def print_statement(bank_account)
    statement = HEADER
    bank_account.transactions.reverse.each do |transaction|
      date = "#{transaction.date} ||"
      credit_or_debit = check_type(transaction)
      balance = " #{'%.2f' % transaction.balance}\n"
      statement += date + credit_or_debit + balance
    end
    print statement
  end

  private

  def check_type(transaction)
    if transaction.type == 'withdraw'
      " || #{'%.2f' % transaction.amount} ||"
    else
      " #{'%.2f' % transaction.amount} || ||"
    end
  end
end
