class Payment
  attr_accessor :payment_behavior

  def initialize(payment_behavior)
    @payment_behavior = payment_behavior
  end

  def pay_perform
    @payment_behavior.pay
  end
end