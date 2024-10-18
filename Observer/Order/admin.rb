require_relative 'observer'

class Admin < Observer
  def update(product)
    puts "Админ уведомлен: цена товара #{product.name} изменилась на #{product.price}"
  end
end