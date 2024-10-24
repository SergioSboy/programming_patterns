require_relative 'logger_decorator'
class SeverityLogger < LoggerDecorator
  def log(message, severity = "INFO")
    super("[#{severity}] #{message}]")
  end
end