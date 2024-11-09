# frozen_string_literal: true
require_relative 'pizza'
class PizzaFactory
  def self.create_pizza(type)
    case type
    when 'cheese'
      CheesePizza.new
    when 'pepperoni'
      PepperoniPizza.new
    when 'veggie'
      VeggiePizza.new
    else
      raise "Unknown pizza type #{type}"
    end
  end
end
