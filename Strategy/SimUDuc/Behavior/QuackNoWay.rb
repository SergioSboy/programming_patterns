require_relative 'QuackBehavior'

class QuackNoWay < QuackBehavior
  def quack
    puts "I can't quack"
  end
end