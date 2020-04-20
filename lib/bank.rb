# frozen_string_literal: true

require 'date'

class Account
  attr_reader :balance

  OPENING_BALANCE = 0

  def initialize(balance = OPENING_BALANCE)
    @balance = balance
  end

  def deposit(_date, amount)
    @balance += amount
    date = Date.today
  end

  def withdraw(_date, amount)
    @balance -= amount
    date = Date.today
  end

  def print_statement
    # code
  end
end
