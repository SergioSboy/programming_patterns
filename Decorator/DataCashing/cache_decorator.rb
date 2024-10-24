class CacheDecorator

  def initialize(calculator)
    @calculator = calculator
    @cash = {}
  end
  def calculate(number)
    @cash[number] ||= @calculator.calculate(number)
  end
end
