require 'credit_card'
module CreditCardValidator

  class Amex < CreditCard

    def initialize n
      self.number = n
      self.type = 'AMEX'
      self
    end


  end

end
