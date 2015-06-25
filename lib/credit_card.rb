module CreditCardValidator
  class CreditCard
    attr_accessor :number
    def initialize n
      self.number = n
      self
    end
  end
end
