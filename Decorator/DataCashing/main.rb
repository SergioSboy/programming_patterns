require_relative 'calculator'
require_relative 'cache_decorator'

calculator = Calculator.new
cached_calculator = CacheDecorator.new(calculator)

puts cached_calculator.calculate(5)  # Выполнит расчет: 25
puts cached_calculator.calculate(5)  # Возьмет из кэша: 25
puts cached_calculator.calculate(7)  # Выполнит расчет: 49