# frozen_string_literal: true

require_relative 'transaction'
require 'date'

class Account
  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    @balance += amount
    deposit = Transaction.new('deposit', amount, @balance)
    @history << deposit
  end

  def withdraw(amount)
    @balance -= amount
    withdrawal = Transaction.new('withdrawal', amount, @balance)
    @history << withdrawal
  end

  def print_statement
    # code
  end
end
