module PaymentStrategy
  def pay
    raise NoImplementedError, "#{self.class} must implemented 'pay' method"
  end
end