# frozen_string_literal: true

class Transaction
  attr_reader :date, :type, :amount, :balance

  def initialize(date = Date.today, type, amount, balance)
    @date = date.to_s
    @type = type
    @amount = amount
    @balance = balance
  end
end
