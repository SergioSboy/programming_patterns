require_relative 'logger_decorator'
class LoggerDecorator

  def initialize(logger)
    @logger = logger
  end
  def log(message)
    @logger.log(message)
  end
end