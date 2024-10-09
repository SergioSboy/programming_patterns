class Duck
  attr_accessor :fly_behavior, :quack_behavior
  
  def initialize(fly_behavior, quack_behavior)
    @fly_behavior = fly_behavior
    @quack_behavior = quack_behavior
  end

  def perform_fly
    @fly_behavior.fly
  end

  def perform_quack
    @quack_behavior.quack
  end

  def swim
    puts "I can swim"
  end
end