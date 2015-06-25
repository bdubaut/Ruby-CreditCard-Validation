require "spec_helper"
require "./lib/credit_card_factory.rb"

describe CreditCardFactory, 'Factory method' do
  describe 'Validate and instanciate the credit card' do
    it 'instanciates an unknown credit card' do
      expect(CreditCardFactory.validate_credit_card('9111111111111111').class).to eq CreditCard
    end
    it 'instanciates a VISA card' do
      expect(CreditCardFactory.validate_credit_card('4111111111111111').class).to eq Visa
    end
    it 'instanciates a MasterCard' do
      expect(CreditCardFactory.validate_credit_card('5105105105105100').class).to eq MasterCard
    end
    it 'instanciates a Discover Card' do
      expect(CreditCardFactory.validate_credit_card('6011111111111117').class).to eq Discover
    end
    it 'instanciates an American Express card' do
      expect(CreditCardFactory.validate_credit_card('378282246310005').class).to eq Amex
    end
    it 'prints the error to STDERR' do
      expect{CreditCardFactory.validate_credit_card('toto')}.to output("Credit Card: 'toto': Bad format.\n").to_stderr
      expect { CreditCardFactory.validate_credit_card('toto') }.not_to raise_error
    end
  end
end
