require 'credit_card'
module CreditCardValidator

  class Discover < CreditCard

    def initialize n
      if n.length == 16
        if n[0..3] == '6011'
          self.number = n.to_s
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
