class Product
  attr_accessor :name, :price, :observers

  def initialize(name, price)
    @name = name
    @price = price
    @observers = []
  end

  def add_observers(observer)
    @observers << observer
  end

  def remove_observers(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each { |observer| observer.update(self) }
  end

  def change_price(new_price)
    @price = new_price
    notify_observers
  end
end