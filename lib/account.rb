# frozen_string_literal: true

require_relative 'transaction'
require_relative 'transaction_history'
require 'date'

class Account
  attr_reader :balance

  def initialize(transaction_history = TransactionHistory.new)
    @balance = 0
    @transaction_history = transaction_history
  end

  def deposit(amount)
    @balance += amount
    deposit = Transaction.new('deposit', amount, @balance)
    @transaction_history.add_to_history(deposit)
  end

  def withdraw(amount)
    @balance -= amount
    withdrawal = Transaction.new('withdrawal', amount, @balance)
    @transaction_history.add_to_history(withdrawal)
  end

  def print_statement
    puts 'date || credit || debit || balance'
    # @transaction_history.history.reverse.each do |transaction|
    #   puts transaction.date.to_s
    # end
  end
end
