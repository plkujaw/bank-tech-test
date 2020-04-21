# frozen_string_literal: true

require_relative 'transaction'

class TransactionHistory
  attr_reader :history

  def initialize
    @history = []
  end

  def add_to_history(transaction)
    @history << transaction
  end
end
