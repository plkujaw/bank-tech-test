# frozen_string_literal: true

class Transaction
  attr_reader :date, :type, :amount

  def initialize(_date, type, amount)
    @date = Date.today
    @type = type
    @amount = amount
    # @balance = balance
  end
end
