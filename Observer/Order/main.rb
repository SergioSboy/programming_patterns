require_relative 'product'
require_relative 'customer'
require_relative 'admin'

product1 = Product.new("Notebook", 1000)
customer1 = Customer.new("Alise")
customer2 = Customer.new("Maria")
admin = Admin.new

product1.add_observers(customer1)
product1.add_observers(customer2)
product1.add_observers(admin)

product1.change_price(900)
product1.change_price(950)