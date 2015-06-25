require 'credit_card'
module CreditCardValidator

  class Discover < CreditCard

    def initialize n
      number = n.to_s
      if number.length == 16
        if number[0..3] == '6011'
          self.number = number
          self.type = 'Discover'
          self
        else
          raise StandardError, 'Discover: Does not start with 6011'
        end
      else
        raise StandardError, 'Bad number length for Discover Card.'
      end
    end
  end

end
