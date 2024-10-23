# frozen_string_literal: true
class Coffee
  def cost
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end

  def description
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end
end