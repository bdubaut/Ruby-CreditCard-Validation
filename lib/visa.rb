module CreditCardValidator

  class Visa < CreditCard
    attr_reader :type
    def initialize n, type
      self.number = n
      self.type = 'VISA'
      self
    end

  end

end
