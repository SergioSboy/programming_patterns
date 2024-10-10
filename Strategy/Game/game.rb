class Game
  def start
    player = Player.new()
    enemy = Enemy.new(100)

    puts 'The game starts!'
  end
end