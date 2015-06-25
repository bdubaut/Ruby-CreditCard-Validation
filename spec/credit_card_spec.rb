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
  describe '#is_valid' do
    it 'returns true if the card number is valid' do
      c = CreditCard.new('4111111111111111')
      expect(c.is_valid?).to be_truthy
    end
    it 'returns false if the card number is invalid' do
      c = CreditCard.new('4111111111111')
      expect(c.is_valid?).to be_falsey
    end
  end
  describe 'validity' do
    it 'returns valid if the card is valid' do
      c = CreditCard.new('4111111111111111')
      expect(c.is_valid?).to be_truthy
      expect(c.validity).to eq 'valid'
    end
    it 'returns invalid if the card is not valid' do
      c = CreditCard.new('411111111111')
      expect(c.is_valid?).to be_falsey
      expect(c.validity).to eq 'invalid'
    end
  end
end
