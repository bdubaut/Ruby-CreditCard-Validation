require 'credit_card'
module CreditCardValidator

  class MasterCard < CreditCard

    def initialize n
      number = n.to_s
      start = (51..65).map { |e| e.to_s }
      if start.include?(n[0..1])
        if number.length == 16
          self.number = number
          self.type = 'MasterCard'
          self
        else
          raise StandardError, 'MasterCard: Number does not have the right length.'
        end
      else
        raise StandardError, 'MasterCard: Does not start with the right values.'
      end
    end


  end

end
