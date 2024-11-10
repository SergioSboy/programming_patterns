class Logger
  def initialize
    @prefix = "#{Time.now.strftime("%Y/%m/%d")} --> "
  end

  def log(message)
    $stdout.write "#{@prefix} + #{message}"
  end
end

class CustomLogger < Logger
  def initialize
    super
    @prefix = "#{Time.now.strftime("%Y/%m/%d")} --> "
  end
end

logger = Logger.new
logger.log "hi"

c_logger = CustomLogger.new
c_logger.log "custom logger!"