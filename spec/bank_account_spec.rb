require 'bank_account'

describe BankAccount do
  MONEY = 100
  default_balance = BankAccount::DEFAULT_BALANCE
  subject(:bank_account) { BankAccount.new }
  let(:deposit_transaction) { Transaction.new(100, 100, 'deposit') }
  let(:withdraw_transaction) { Transaction.new(100, 100, 'withdraw') }

  it 'is initialized with a balance of 0' do
    expect(bank_account.balance).to eq(default_balance)
  end

  it 'is initialized with an empty array "transactions"' do
    expect(bank_account.transactions).to eq([])
  end

  describe '#deposit' do
    it 'should add the amount to the balance' do
      expect { bank_account.deposit(MONEY) }.to change {
        bank_account.balance
      }.by(100)
    end

    it 'should raise an error if depositing a negative number' do
      expect { bank_account.deposit(-MONEY) }.to raise_error(
        'Enter an amount more than 0'
      )
    end
  end

  describe '#withdraw' do
    it 'should remove the amount from the balance' do
      bank_account.deposit(MONEY)
      expect { bank_account.withdraw(MONEY) }.to change {
        bank_account.balance
      }.by(-100)
    end

    it 'raises error if amount withdrawn is more than the balance' do
      expect { bank_account.withdraw(MONEY) }.to raise_error(
        'Insufficient funds'
      )
    end
  end
end
