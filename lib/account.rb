# frozen_string_literal: true

require_relative 'transaction'
require_relative 'transaction_history'

class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = TransactionHistory.new
  end

  def deposit(amount)
    @balance += amount
    @transaction_history.add_to_history(create_deposit(amount))
  end

  def withdraw(amount)
    @balance -= amount
    @transaction_history.add_to_history(create_withdrawal(amount))
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

  private

  def create_deposit(amount)
    Transaction.new('deposit', amount, @balance)
  end

  def create_withdrawal(amount)
    Transaction.new('withdrawal', amount, @balance)
  end
end
