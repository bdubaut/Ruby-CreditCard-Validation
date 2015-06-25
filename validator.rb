require "./lib/credit_card_factory.rb"


if ARGV.empty?
  puts "Example usage: \n\truby validator.rb <card-number>"
else
  ARGV.each do |n|
    card = CreditCardFactory.validate_credit_card(n)
    puts "#{card.type.upcase}: #{card.number} : #{card.validity}" unless card.nil?
  end
end
