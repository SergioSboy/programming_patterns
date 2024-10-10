require_relative 'payment_strategy'

class CardPayment
  include PaymentStrategy

  def pay
    puts "Payment with card"
  end
end