# frozen_string_literal: true
require_relative 'coffee'
class CoffeeDecorator < Coffee
  def initialize(coffee)
    @coffee = coffee
  end

  def cost
    @coffee.cost
  end

  def description
    @coffee.description
  end
end