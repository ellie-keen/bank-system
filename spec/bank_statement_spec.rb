require 'bank_statement'
require 'bank_account'

describe BankStatement do
  MONEY = 100
  subject(:bank_statement) { BankStatement.new }
  let(:bank_account) { BankAccount.new }
  date = ''

  before(:each) do
    date = Time.now.strftime('%d/%m/%Y')
    Timecop.freeze(date)
    bank_account.deposit(MONEY)
  end

  describe '#print_statement' do
    it 'should print a bank statement for a deposit' do
      expect(bank_statement.print_statement(bank_account)).to eq(
        "date || credit || debit || balance\n" \
        "#{date} || 100.00 || || 100.00\n"
      )
    end

    it 'should print a bank statement for a withdrawal' do
      bank_account.withdraw(50)
      expect(bank_statement.print_statement(bank_account)).to eq(
        "date || credit || debit || balance\n" \
        "#{date} || || 50.00 || 50.00\n" \
        "#{date} || 100.00 || || 100.00\n"
      )
    end
  end
end
