# frozen_string_literal: true
require_relative 'pizza_factory'
class PizzaStore
  def order_pizza(type)
    pizza = PizzaFactory.create_pizza(type)
    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
    pizza
  end
end
