class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def update(event)
    puts "#{name} получил уведомление: #{event}"
  end
end