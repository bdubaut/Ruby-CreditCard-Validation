require "spec_helper"
require "./lib/credit_card"
require "./lib/discover.rb"

include CreditCardValidator

describe Discover, 'Discover Credit Card' do
  describe '#initialize' do
    it 'instanciates a Discover card with Discover type' do
      c = Discover.new('6011111111111117')
      expect(c.number).to start_with '6011'
      expect(c.number.length).to eq 16
      expect(c.type).to eq 'Discover'
    end
    it 'should raise an error if the number length is not 16' do
      expect{Discover.new('1234')}.to raise_error StandardError
    end
    it 'should raise an error if the number does not start with 6011' do
      expect{Discover.new('6031111111111117')}.to raise_error StandardError
    end
  end
end
