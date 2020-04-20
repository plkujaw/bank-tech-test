# frozen_string_literal: true

require 'bank'

describe Account do
  subject(:account) { described_class.new }
  it 'has a opening balance of 0' do
    expect(account.balance).to eq(Account::OPENING_BALANCE)
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
      account.deposit(500)
      expect(account.balance).to eq(1500)
    end
  end

  describe '#withdrawal' do
    it 'deducts amount from the account balance' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq(500)
      account.withdraw(200)
      expect(account.balance).to eq(300)
    end
  end
end
