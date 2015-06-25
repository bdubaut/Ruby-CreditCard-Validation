require 'credit_card'
module CreditCardValidator

  class MasterCard < CreditCard

    def initialize n
      self.number = n
      self.type = 'MasterCard'
      self
    end


  end

end
