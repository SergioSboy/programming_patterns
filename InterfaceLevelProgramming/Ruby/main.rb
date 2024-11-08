# frozen_string_literal: true

# Интерфейс выражается не явно, используется соглашение о методах.
# Интерфейс уведомлений, который имеет метод #send и который должен явно объявляться в дочерних классах.
class NotificationSender
  def send(message)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Реализация интерфейса для отправки письма
class EmailSender < NotificationSender
  def send(message)
    puts "Sending email with message: #{message}"
  end
end

# Реализация интерфейса для отправки SMS
class SmsSender < NotificationSender
  def send(message)
    puts "Sending sms with message: #{message}"
  end
end

# Класс, который отправляет уведомления, используя объект отправителя.
# Объект, передаваемый в качестве sender, должен реализовать метод send(message)
class NotificationService
  def initialize(sender)
    @sender = sender
  end

  def notify(message)
    @sender.send(message)
  end
end

# Пример использования
sms_sender = SmsSender.new
notification_service = NotificationService(sms_sender)
notification_service.notify('Hello via SMS!')
