# frozen_string_literal: true

require_relative 'transaction'
require_relative 'transaction_history'
require 'date'

class Account
  attr_reader :balance, :transaction_history

  def initialize(transaction_history = TransactionHistory.new)
    @balance = 0
    @transaction_history = transaction_history
  end

  def deposit(amount)
    @balance += amount
    deposit = Transaction.new('deposit', amount)
    @transaction_history.add_to_history(deposit)
  end

  def withdraw(amount)
    @balance -= amount
    withdrawal = Transaction.new('withdrawal', amount)
    @transaction_history.add_to_history(withdrawal)
  end

  def print_statement
    # code
  end
end
