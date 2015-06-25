require "spec_helper"
require "./lib/credit_card.rb"

include CreditCardValidator

describe CreditCard do
  describe '#initialize' do
    it 'instanciates a CreditCard with its card number.' do
      c = CreditCard.new("12334544534645")
      expect(c.class).to eq CreditCard
      expect(c.number).to eq '12334544534645'
    end
  end
end
