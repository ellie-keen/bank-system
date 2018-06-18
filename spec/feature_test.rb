require 'bank_account'

describe 'Feature test' do
  let(:bank_account) { BankAccount.new }

  it 'Deposit money to account and withdraw money' do
    bank_account.deposit(100)
    bank_account.withdraw(50)
    expect(bank_account.balance).to eq 50
  end

  it 'Raises an error if withdrawing more money than is available' do
    bank_account.deposit(100)
    bank_account.withdraw(50)
    expect { bank_account.withdraw(100) }.to raise_error('Insufficient funds')
  end

end
