require 'bank_statement'
require 'bank_account'

describe BankStatement do

  subject(:bank_statement) { BankStatement.new }
  let(:bank_account) { BankAccount.new }

  describe '#print_statement' do
    it 'should print a bank statement of all previous transactions' do
      bank_account.deposit(100)
      expect(bank_statement.print_statement(bank_account)).to eq("Amount: 100\nDate: 19/06/2018\nBalance: 100")
    end
  end

end
