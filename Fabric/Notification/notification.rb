# frozen_string_literal: true
class Notification
  def send_message(message)
    raise NotImplementedError, "Этот метод должен быть реализован подклассом"
  end
end