require 'transaction'

describe Transaction do
  subject(:transaction) { Transaction.new(100) }

  it 'should be initialized with an amount' do
    expect(transaction.amount).to eq(100)
  end

  it 'should be initialized with a date' do
    expect(transaction.date).to eq('19/06/2018')
  end
end
