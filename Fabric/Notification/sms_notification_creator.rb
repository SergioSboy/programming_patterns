class SMSNotificationCreator < NotificationCreator
  def create_notification
    SMSNotification.new
  end
end