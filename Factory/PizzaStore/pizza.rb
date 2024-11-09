# frozen_string_literal: true
class Pizza
  def prepare
    puts "Preparing #{self.class.name}"
  end

  def bake
    puts "Baking #{self.class.name}"
  end

  def cut
    puts "Cutting #{self.class.name}"
  end

  def box
    puts "Boxing #{self.class.name}"
  end
end

class CheesePizza < Pizza
end

class PepperoniPizza < Pizza
end

class VeggiePizza < Pizza
end