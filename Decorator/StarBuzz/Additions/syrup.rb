# frozen_string_literal: true
require_relative '../CoffeeTypes/coffee_decorator'

class Syrup < CoffeeDecorator
  def cost
    @coffee.cost + 30
  end

  def description
    "#{@coffee.description} + Syrup"
  end
end