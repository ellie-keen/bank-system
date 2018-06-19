class BankStatement

  def print_statement(bank_account)
    statement = "date || credit || debit || balance\n"
    bank_account.transaction_history.each do |transaction|
      if transaction.type == 'deposit'
        statement += "#{transaction.date} || #{'%.2f' % transaction.amount} || || #{'%.2f' % transaction.balance}\n"
      else
        statement += "#{transaction.date} || || #{'%.2f' % transaction.amount} || #{'%.2f' % transaction.balance}\n"
      end
    end
    statement
  end

end
