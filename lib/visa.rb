require 'credit_card'
module CreditCardValidator

  class Visa < CreditCard

    def initialize n
        if n[0,1] == '4'
          if ((n.length == 13) || n.length == 16)
            self.number = n
            self.type = 'VISA'
            self
          else
            raise StandardError, 'Number does not have the right length'
          end
        else
          raise StandardError, 'Does not start with 4.'
        end
    end
  end

end
