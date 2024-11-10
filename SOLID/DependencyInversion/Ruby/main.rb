class TerminalPrinter
  def write(msg)
    puts "#{prefix} #{msg}"
  end
end

class FilePrinter
  def write(msg)
    File.open('log.txt', 'a') { |f| f.write(msg) }
  end
end

class Logger
  def initialize
    @prefix = "#{Time.now.strftime("%Y-%m-%dT%H:%M:%S")} --> "
  end

  def log(msg:, printer: TerminalPrinter)
    printer.new.write "#{@prefix} #{msg}"
  end
end

logger = Logger.new
logger.log msg: 'hi'
logger.log msg: 'log to file', printer: FilePrinter