# frozen_string_literal: true

class Transaction
  attr_reader :date, :type, :amount, :balance

  def initialize(date = Date.today.to_s, type, amount, balance)
    @date = date
    @type = type
    @amount = amount
    @balance = balance
  end
end
