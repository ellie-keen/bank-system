require 'bank_statement'
require 'bank_account'

describe BankStatement do

  subject(:bank_statement) { BankStatement.new }
  let(:bank_account) { BankAccount.new }

  describe '#print_statement' do
    it 'should print a bank statement of a transactions' do
      bank_account.deposit(100)
      expect(bank_statement.print_statement(bank_account)).to eq("date || credit || debit || balance\n19/06/2018 || 100.00 || || 100.00\n")
    end

    it 'should print a bank statement of all previous transactions' do
      bank_account.deposit(25)
      bank_account.deposit(50)
      expect(bank_statement.print_statement(bank_account)).to eq("date || credit || debit || balance\n19/06/2018 || 25.00 || || 25.00\n19/06/2018 || 50.00 || || 75.00\n")
    end
  end

end
