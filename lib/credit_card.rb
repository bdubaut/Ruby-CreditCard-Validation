module CreditCardValidator
  class CreditCard
    attr_accessor :number, :type
    def initialize n
      self.number = n.to_s
      self.type = 'Unknown'
      self
    end

    # This method performs the validity check using the Luhn Algorithm.
    def is_valid?
      number = self.number.gsub(' ', '').reverse.chars.map.with_index { |n, i| i.odd? ? n.to_i*2 : n.to_i }
      sum = 0
      number.each do |e|
        if e >= 10
          sum += (e/10 + e.modulo(10))
        else
          sum += e
        end
      end
      return sum % 10 == 0
    end

    # this method is just there to facilitate the pretty-print. we'll see if I use it.
    def validity
      self.is_valid? ? 'valid' : 'invalid'
    end
  end
end
