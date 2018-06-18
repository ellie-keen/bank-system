require 'bank_account'

describe BankAccount do

  subject(:bank_account) { BankAccount.new }

   it 'is initialized with a balance of 0' do
     expect(bank_account.balance).to eq (0)
   end

end
