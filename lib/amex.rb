require 'credit_card'
module CreditCardValidator

  class Amex < CreditCard

    def initialize n
      number = n.to_s
      if n.length == 15
        if number[0,2] == '34' || number[0,2] == '37'
          self.number = number
          self.type = 'AMEX'
          self
        else
          raise StandardError, 'AMEX: Does not start with 34 or 37'
        end
      else
        raise StandardError, 'AMEX: Does not have the right size.'
      end
    end


  end

end
