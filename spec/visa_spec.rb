require "spec_helper"
require "./lib/visa.rb"

include CreditCardValidator

describe Visa, 'Visa Credit Card' do
  describe '#initialize' do
    it 'instanciates a Visa Card with visa type' do
      c = Visa.new('4111111111111111')
      expect((c.number.length == 13) || (c.number.length == 16)).to be_truthy
      expect(c.number).to start_with '4'
      expect(c.is_valid?).to be_truthy
      expect(c.type).to eq 'VISA'
    end
    it 'raises a StandardError if the number does not start with 4' do
      expect{Visa.new('587673929')}.to raise_error(StandardError)
    end
    it 'raises a StandardError if the number does not have the right length' do
      expect{Visa.new('411111111111111')}.to raise_error(StandardError)
      expect{Visa.new('41111111111')}.to raise_error(StandardError)
    end
  end
end
