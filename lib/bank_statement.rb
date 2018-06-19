class BankStatement

  def print_statement(bank_account)
    bank_account.transaction_history.each do |transaction|
      return "Amount: #{transaction.amount}\nDate: #{transaction.date}\nBalance: #{transaction.balance}"
    end
  end

end
