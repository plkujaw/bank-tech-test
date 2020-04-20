# frozen_string_literal: true

require 'bank'

describe Account do
  subject(:account) { described_class.new }
  it 'has an opening balance of 0' do
    expect(account.balance).to eq(0)
  end
  it 'can accept deposits' do
    expect { account.deposit(1000) }.not_to raise_error
  end
  it 'can accept withdrawals' do
    expect { account.withdraw(1000) }.not_to raise_error
  end
  it 'can print a statement' do
    expect { account.print_statement }.not_to raise_error
  end

  describe '#deposit' do
    it 'adds amount to the account balance' do
      account.deposit(1000)
      expect(account.balance).to eq(1000)
    end
    it 'stores an operation in transaction history' do
      deposit = account.deposit(1000)
      expect(account.history).to include(*deposit)
    end
  end

  describe '#withdrawal' do
    it 'deducts amount from the account balance' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq(500)
    end
    it 'stores an operation in transaction history' do
      withdraw = account.withdraw(1000)
      expect(account.history).to include(*withdraw)
    end
  end
end
