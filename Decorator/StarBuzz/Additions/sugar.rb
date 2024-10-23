# frozen_string_literal: true
require_relative '../CoffeeTypes/coffee_decorator'

class Sugar < CoffeeDecorator
  def cost
    @coffee.cost + 10
  end

  def description
    "#{@coffee.description} + Sugar"
  end
end