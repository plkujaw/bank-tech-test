# frozen_string_literal: true

require 'transaction_history'

describe TransactionHistory do
  subject(:transaction_history) { described_class.new }
  describe '#add_to_history' do
    it 'adds transactions to history' do
      date = Date.today
      deposit = Transaction.new(date, 'deposit', 1000, 1000)
      withdrawal = Transaction.new(date, 'withdrawal', 500, 500)
      transaction_history.add_to_history(deposit)
      transaction_history.add_to_history(withdrawal)
      expect(transaction_history.history.first).to eq(deposit)
      expect(transaction_history.history.last).to eq(withdrawal)
    end
  end
end
