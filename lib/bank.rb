# frozen_string_literal: true

class Account
  attr_reader :balance

  OPENING_BALANCE = 0

  def initialize(balance = OPENING_BALANCE)
    @balance = balance
  end

  def deposit(amount)
    # code
  end

  def withdraw(amount)
    # code
  end

  def statement
    # code
  end
end
