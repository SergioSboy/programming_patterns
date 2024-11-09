class EmailNotification < Notification
  def send_message(message)
    puts "Отправляем Email с сообщением #{message}"
  end
end