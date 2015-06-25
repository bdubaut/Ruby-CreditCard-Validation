require "spec_helper"
require "./lib/amex.rb"

include CreditCardValidator

describe Amex, 'Amex Credit Card' do
  describe '#initialize' do
    it 'instanciates an Amex Card with visa type' do
      c = Amex.new('378282246310005')
      c.number.should start_with ('37' or '34')
      expect(c.number.length).to eq 15
      expect(c.type).to eq 'AMEX'
    end
  end
end
