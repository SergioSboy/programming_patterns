class Enemy
  attr_accessor :health

  def initialize(health)
    @health = health
  end

  def take_damage(damage)
    @health -= damage
    if health > 0
      puts "The enemy has #{health} health remaining"
    else
      puts "The enemy is defeated"
    end
  end
end