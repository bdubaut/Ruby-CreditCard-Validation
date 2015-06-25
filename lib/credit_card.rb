module CreditCardValidator
  class CreditCard
    attr_accessor :number
    def initialize n
      self.number = n
      self
    end

    # This methods performs the validity check using the Luhn Algorithm.
    def is_valid?
      number = self.number.gsub(' ', '')

    end

    def validity
      self.is_valid? ? 'valid' : 'invalid'
    end
  end
end
