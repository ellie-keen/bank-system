require 'bank_account'

describe BankAccount do
  subject(:bank_account) { BankAccount.new }

  it 'is initialized with a balance of 0' do
    expect(bank_account.balance).to eq(0)
  end

  describe '#deposit' do
    it 'should add the amount to the balance' do
      expect { bank_account.deposit(100) }.to change { bank_account.balance }.by(100)
    end
  end
end
