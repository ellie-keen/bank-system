require 'bank_account'

describe BankAccount do
  subject(:bank_account) { BankAccount.new }

  it 'is initialized with a balance of 0' do
    expect(bank_account.balance).to eq(0)
  end

  it 'is initialized with an empty array "transactions"' do
    expect(bank_account.transactions).to eq([])
  end

  describe '#deposit' do
    it 'should add the amount to the balance' do
      expect { bank_account.deposit(100) }.to change { bank_account.balance }.by(100)
    end

    it 'should raise an error if depositing a negative number' do
      expect { bank_account.deposit(-100) }.to raise_error('Enter an amount more than 0')
    end
  end

  describe '#withdraw' do
    it 'should remove the amount from the balance' do
      bank_account.deposit(100)
      expect { bank_account.withdraw(100) }.to change { bank_account.balance }.by(-100)
    end

    it 'should raise an error if the amount withdrawn is more than the balance' do
      expect { bank_account.withdraw(100) }.to raise_error('Insufficient funds')
    end
  end

  describe '#transactions' do

    it 'should include the amount, date and balance in transactions array' do
      expect(bank_account.transactions).to eq(['100, 18/06/2018, 100'])
    end

    it 'should hold multiple transactions within the array' do
      bank_account.withdraw(50)
      expect(bank_account.transactions).to eq(['100, 18/06/2018, 100','50, 18/06/2018, 50'])
    end
  end

end
