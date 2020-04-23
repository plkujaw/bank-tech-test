# frozen_string_literal: true

require 'date'
class Transaction
  attr_reader :date, :type, :amount, :balance

  def initialize(date = Date.today, type, amount, balance)
    @date = date
    @type = type
    @amount = amount
    @balance = balance
  end
end
