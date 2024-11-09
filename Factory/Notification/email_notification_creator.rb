class EmailNotificationCreator < NotificationCreator
  def create_notification
    EmailNotification.new
  end
end