require_relative 'observer'

class Customer < Observer
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def update(product)
    puts "#{@name}, цена товара #{product.name} изменилась на #{product.price}"
  end
end