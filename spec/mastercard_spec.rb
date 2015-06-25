require "spec_helper"
require "./lib/mastercard.rb"

include CreditCardValidator

describe MasterCard, 'Visa Credit Card' do
  describe '#initialize' do
    it 'instanciates a MasterCard with MasterCard type' do
      c = MasterCard.new('5105105105105100')
      range = Array(51..55)
      expect(range).to include c.number[0..1].to_i
      expect(c.number.length).to eq 16
      expect(c.type).to eq 'MasterCard'
    end
  end
end
