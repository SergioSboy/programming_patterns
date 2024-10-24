class FileLogger < LoggerDecorator
  def log(message)
    File.open("log.txt", "a") {|f| f.puts message}
    super(message)
  end
end