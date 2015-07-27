require './lib/credit_card'
require './lib/discover'
require './lib/mastercard'
require './lib/visa'
require './lib/amex'

include CreditCardValidator

# Credit Card Factory class
class CreditCardFactory
  def self.validate_credit_card(number)
    n = number.to_s.gsub(' ', '')
    mastercard_range = (51..55).map(&:to_s)
    case n.length
    when 15
      if n[0..1] == '34' || n[0..1] == '37'
        Amex.new(n)
      else
        CreditCard.new(n)
      end
    when 16
      if mastercard_range.include?(n[0..1])
        MasterCard.new(n)
      elsif n[0, 1] == '4'
        Visa.new(n)
      else
        if n[0..3] == '6011'
          Discover.new(n)
        else
          CreditCard.new(n)
        end
      end
    when 13
      if n[0, 1] == '4'
        Visa.new(n)
      else
        CreditCard.new(n)
      end
    else
      CreditCard.new(n)
    end
  rescue StandardError => e
    $stderr.puts e
  end
end
