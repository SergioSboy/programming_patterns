class NotificationCreator
  def create_notification
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def send(message)
    notification = create_notification
    notification.send_message(message)
  end
end