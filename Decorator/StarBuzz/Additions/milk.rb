# frozen_string_literal: true
require_relative '../CoffeeTypes/coffee_decorator'

class Milk < CoffeeDecorator
  def cost
    @coffee.cost + 20
  end

  def description
    "#{@coffee.description} + Milk"
  end
end