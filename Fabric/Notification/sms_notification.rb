class SMSNotification < Notification
  def send_message(message)
    puts "Отправляем SMS с сообщением #{message}"
  end
end