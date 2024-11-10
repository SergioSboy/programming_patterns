class Animal
  def talk(_custom_msg = '')
    raise NotImplementedError
  end
end

class Cat < Animal
  def talk(custom_msg = '')
    puts "Meow! #{custom_msg}"
  end
end

class Dog < Animal
  def talk(_custom_msg = '')
    puts "Woof!"
  end
end