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
    expect { account.statement }.not_to raise_error
  end
end
