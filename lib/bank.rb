# frozen_string_literal: true

require_relative 'transaction'
require 'date'

class Account
  attr_reader :balance, :history

  OPENING_BALANCE = 0

  def initialize(balance = OPENING_BALANCE)
    @balance = balance
    @history = []
  end

  def deposit(amount)
    @balance += amount
    deposit = Transaction.new('deposit', amount, @balance)
    @history << deposit
  end

  def withdraw(amount)
    @balance -= amount
    date = Date.today.to_s
    type = 'withdraw'
    withdrawal = [date, type, amount, @balance]
    @history << withdrawal
  end

  def print_statement
    # code
  end
end
