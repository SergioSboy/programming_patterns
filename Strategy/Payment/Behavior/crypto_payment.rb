require_relative 'payment_strategy'

class CryptoPayment
  include PaymentStrategy
  
  def pay
    puts "Pay with crypto"
  end
end