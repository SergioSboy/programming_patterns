require_relative 'my_logger'
require_relative 'timestamp_logger'
require_relative 'severity_logger'
require_relative 'file_logger'
logger = MyLogger.new

# Логирование с меткой времени
timestamped_logger = TimestampLogger.new(logger)
timestamped_logger.log("This is a log message")
# => [2024-10-23 14:20:32] This is a log message

# Логирование с меткой времени и указанием типа сообщения
severity_logger = SeverityLogger.new(timestamped_logger)
severity_logger.log("An error occurred", "ERROR")
# => [ERROR] [2024-10-23 14:20:32] An error occurred

# Логирование в файл с меткой времени
file_logger = FileLogger.new(severity_logger)
file_logger.log("File log entry")
# Запишет в файл и выведет:
# => [INFO] [2024-10-23 14:20:32] File log entry