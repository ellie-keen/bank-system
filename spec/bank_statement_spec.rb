require 'bank_statement'

describe BankStatement do

  it 'prints the bank statement' do
    account = BankAccount.new
    account.deposit(100)
    BankStatement.new(account).print_statement.to eq('Amount: ')
  end

end
