# frozen_string_literal: true

require 'transaction_history'

describe TransactionHistory do
  subject(:transaction_history) { described_class.new }
  describe '#add_to_history' do
    it 'adds transactions to history' do
      date = Date.today
      transaction = Transaction.new(date, 'deposit', 1000)
      transaction_history.add_to_history(transaction)
      expect(transaction_history.history).to include(transaction)
    end
  end
end
