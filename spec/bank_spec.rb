# frozen_string_literal: true

require 'bank'

describe Bank do
  subject(:bank) { described_class.new }
  it 'can accept deposits' do
    expect { bank.deposit }.not_to raise_error
  end
end
