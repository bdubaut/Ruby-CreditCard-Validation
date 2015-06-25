require "spec_helper"
require "./lib/credit_card"
require "./lib/amex.rb"

include CreditCardValidator

describe Amex, 'Amex Credit Card' do
  describe '#initialize' do
    it 'instanciates an Amex Card with visa type' do
      c = Amex.new('378282246310005')
      expect(c.number).to start_with ('37' or '34')
      expect(c.number.length).to eq 15
      expect(c.type).to eq 'AMEX'
    end
    it 'raises an error if the number does not have 15 characters' do
      expect { Amex.new('37834847592') }.to raise_error StandardError
    end
    it 'raises an error if the number does not start by 34 or 37' do
      expect { Amex.new('323282246310005') }.to raise_error StandardError
    end
  end
end
