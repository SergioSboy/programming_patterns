require_relative 'Duck'
require_relative 'Behavior/FlyNoWay'
require_relative 'Behavior/QuackSquek'

rubber_duck = Duck.new(FlyNoWay.new, QuackSquek.new)

rubber_duck.perform_fly
rubber_duck.perform_quack
