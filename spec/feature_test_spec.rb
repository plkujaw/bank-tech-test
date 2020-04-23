# frozen_string_literal: true

require 'account'

describe 'feature_test' do
  date = Date.today.strftime('%d/%m/%Y')
  it 'makes a bank operations and prints out statement' do
    account = Account.new
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    expect { account.print_statement }.to output(
      "date || credit || debit || balance\n#{date} || || 500.00 || 2500.00\n#{date} || 2000.00 || || 3000.00\n#{date} || 1000.00 || || 1000.00\n"
    ).to_stdout
  end
end
