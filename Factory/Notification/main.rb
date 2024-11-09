def send_notification(creator, message)
  creator.send(message)
end

email_creator = EmailNotificationCreator.new
sms_creator = SMSNotificationCreator.new

send_notification(email_creator, 'Hello World! It\'s my Email!')
send_notification(sms_creator, 'Hello World! It\'s my SMS!')