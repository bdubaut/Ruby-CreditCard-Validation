require "./lib/credit_card"
require "./lib/discover"
require "./lib/mastercard"
require "./lib/visa"
require "./lib/amex"

include CreditCardValidator

class CreditCardFactory
  def self.validate_credit_card number
    n = number.to_s.gsub(' ', '')
    mastercard_range = (51..55).map { |e| e.to_s }
    case n.length
    when 15
      if n[0..1] == '34' || n[0..1] == '37'
        cc = Amex.new(n)
      else
        cc = CreditCard.new(n)
      end
    when 16
      if mastercard_range.include?(n[0..1])
        cc = MasterCard.new(n)
      elsif n[0,1] == '4'
        cc = Visa.new(n)
      else
        if n[0..3] == '6011'
          cc = Discover.new(n)
        else
          cc = CreditCard.new(n)
        end
      end
    when 13
      if n[0,1] == '4'
        cc = Visa.new(n)
      else
        cc = CreditCard.new(n)
      end
    else
      cc = CreditCard.new(n)
    end
  rescue StandardError => e
    $stderr.puts e
    # puts e.message
  end
end
