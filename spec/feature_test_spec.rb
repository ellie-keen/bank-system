require 'bank_account'
require 'bank_statement'

describe 'Feature test' do
  let(:bank_account) { BankAccount.new }
  let(:bank_statement) { BankStatement.new }

  describe 'After two transactions' do
    before(:each) do
      bank_account.deposit(100)
      bank_account.withdraw(50)
    end

    it 'should have correct balance after deposit and withdrawal' do
      expect(bank_account.balance).to eq 50
    end

    it 'should raise error if withdrawing more money than is available' do
      expect { bank_account.withdraw(100) }.to raise_error('Insufficient funds')
    end

    it 'should hold two transactions' do
      expect(bank_account.transactions.length).to eq(2)
    end
  end

  describe 'BankStatement' do
    date = ''

    before(:each) do
      date = Time.now.strftime('%d/%m/%Y')
      Timecop.freeze(date)
      bank_account.deposit(10)
      bank_account.deposit(30)
      bank_account.withdraw(5)
    end

    it 'should print 3 items in reverse chronological order' do
      expect(bank_statement.print_statement(bank_account)).to eq(
        "date || credit || debit || balance\n" \
        "#{date} || || 5.00 || 35.00\n" \
        "#{date} || 30.00 || || 40.00\n" \
        "#{date} || 10.00 || || 10.00\n"
      )
    end
  end
end
