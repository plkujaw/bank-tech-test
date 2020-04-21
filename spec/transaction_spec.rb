# frozen_string_literal: true

require 'transaction'

describe Transaction do
  it 'creates a deposit transaction' do
    date = Date.today
    transaction = Transaction.new(date, 'deposit', 500)
    expect(transaction.date).to eq(date)
    expect(transaction.type).to eq('deposit')
    expect(transaction.amount).to eq(500)
  end

  it 'creates a withdrawal transaction' do
    date = Date.today
    transaction = Transaction.new(date, 'withdrawal', 500)
    expect(transaction.date).to eq(date)
    expect(transaction.type).to eq('withdrawal')
    expect(transaction.amount).to eq(500)
  end
end
