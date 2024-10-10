class Player
  attr_accessor :attack_strategy

  def initialize
    @attack_strategy = attack_strategy
  end

  def change_strategy(new_strategy)
    @attack_strategy = new_strategy
  end

  def attack(enemy)
    @attack_strategy.attack(enemy)
  end
end