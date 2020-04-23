# frozen_string_literal: true

require_relative 'transaction'
require_relative 'transaction_history'
require 'date'

class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = TransactionHistory.new
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
    @transaction_history.history.reverse.each do |transaction|
      if transaction.type == 'deposit'
        puts transaction.date.to_s + ' || ' + format('%.2f', transaction.amount) + ' || || ' + format('%.2f', transaction.balance)
      else
        puts transaction.date.to_s + ' || || ' + format('%.2f', transaction.amount) + ' || ' + format('%.2f', transaction.balance)
      end
    end
  end
end
