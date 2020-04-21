# frozen_string_literal: true

require 'account'

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
  end

  describe '#withdraw' do
    it 'deducts amount from the account balance' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq(500)
    end
  end

  describe '#print_statement' do
    it 'prints the statement' do
      account.deposit(1000)
      account.deposit(2000)
      account.withdraw(500)
      expect(account.print_statement).to eq(
        'date || credit || debit || balance
        21/04/2020 || || 500.00 || 2500.00
        21/04/2020 || 2000.00 || || 3000.00
        21/04/2020 || 1000.00 || || 1000.00'
      )
    end
  end
end
