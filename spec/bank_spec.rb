# frozen_string_literal: true

require 'bank'

describe Bank do
  subject(:bank) { described_class.new }
  it 'can accept deposits' do
    expect { bank.deposit(1000) }.not_to raise_error
  end
  it 'can accept withdrawals' do
    expect { bank.withdraw(1000) }.not_to raise_error
  end
  it 'can print a statement' do
    expect { bank.statement }.not_to raise_error
  end
end
