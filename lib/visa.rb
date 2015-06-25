require 'credit_card'
module CreditCardValidator

  class Visa < CreditCard

    def initialize n
      number = n.to_s
        if number[0,1] == '4'
          if ((number.length == 13) || number.length == 16)
            self.number = number
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
