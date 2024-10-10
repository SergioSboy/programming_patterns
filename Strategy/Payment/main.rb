require_relative 'payment'
require_relative 'Behavior/card_payment'
require_relative 'Behavior/crypto_payment'


# User pays with a card

card_pay = Payment.new(CardPayment.new)

card_pay.pay_perform

# User pays with crypto

crypto_pay = Payment.new(CryptoPayment.new)

crypto_pay.pay_perform
