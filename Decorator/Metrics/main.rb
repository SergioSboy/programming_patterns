# frozen_string_literal: true
class PaymentService
  def process(amount)
    puts "Processing payment of #{amount}..."
    # Imitation of payment delay
    sleep(1)
    puts "Payment of #{amount} completed!"
  end
end

class LoggingDecorator
  def initialize(service)
    @service = service
  end

  def process(amount)
    puts "[LOG] Processing payment of #{amount}"
    @service.process(amount)
    puts "[LOG] Processing payment of #{amount} completed!"
  end
end

class MetricsDecorator
  def initialize(service)
    @service = service
  end

  def process(amount)
    start_time = Time.now
    @service.process(amount)
    end_time = Time.now
    puts "[METRICS] Processing payment of #{amount} completed!"
  end
end