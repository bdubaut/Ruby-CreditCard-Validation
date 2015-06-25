# Ruby-CreditCard-Validation
Ruby Coding Exercise for Everyday Hero.
![](http://www.endurancesportswire.com/wp-content/uploads/2015/04/Logodouble.jpg)

This project implements the [Factory Method](https://en.wikipedia.org/wiki/Factory_method_pattern) design pattern:
* A factory class `CreditCardFactory` is generating the specific Card objects according to the instructions.
* A general `CreditCard` class is mother to all the other cards
* Each specific card class inherits from the Mother class `CreditCard`.

## Installation
1. Clone the project
2. Inside the project directory, if you don't have it already, install **bundler**
```ruby
gem install bundler
```
3. run `bundle install`

4. you can run Rspec against it by running `rspec`
5. run the command:
```
ruby validator.rb <card-number>
```
## Examples:
```
4111111111111111
4111111111111
4012888888881881
378282246310005
6011111111111117
5105105105105100
5105 1051 0510 5106
9111111111111111
```

gives the following output:
```
VISA: 4111111111111111 : valid
VISA: 4111111111111 : invalid
VISA: 4012888888881881 : valid
AMEX: 378282246310005 : valid
DISCOVER: 6011111111111117 : valid
MASTERCARD: 5105105105105100 : valid
MASTERCARD: 5105105105105106 : invalid
UNKNOWN: 9111111111111111 : invalid
```
