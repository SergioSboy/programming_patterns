# frozen_string_literal: true
require_relative 'CoffeeTypes/espresso'
require_relative 'Additions/milk'
require_relative 'Additions/sugar'
require_relative 'Additions/syrup'


coffee = Espresso.new

puts coffee.description
puts coffee.cost

# Добавляем молоко
coffee_with_milk = Milk.new(coffee)

puts coffee_with_milk.description  # => "Espresso + Milk"
puts coffee_with_milk.cost         # => 170

# Добавляем сахар
coffee_with_milk_and_sugar = Sugar.new(coffee_with_milk)

puts coffee_with_milk_and_sugar.description  # => "Espresso + Milk + Sugar"
puts coffee_with_milk_and_sugar.cost         # => 180

# Добавляем сироп
coffee_with_all = Syrup.new(coffee_with_milk_and_sugar)

puts coffee_with_all.description  # => "Espresso + Milk + Sugar + Syrup"
puts coffee_with_all.cost         # => 210