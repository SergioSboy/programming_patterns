require_relative 'logger_decorator'
class TimestampLogger < LoggerDecorator
  def log(message)
    super("[#{Time.now}] #{message}]")
  end
end