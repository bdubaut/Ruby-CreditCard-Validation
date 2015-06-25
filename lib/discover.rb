# require 'credit_card'
module CreditCardValidator

  class Discover < CreditCard

    def initialize n
      self.number = n
      self.type = 'Discover'
      self
    end
  end

end
