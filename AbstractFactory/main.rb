# Абстрактные интерфейсы для кнопки и поля ввода
class Button
  def render
    raise NotImplementedError, "#{self.class} must implement the render method"
  end
end

class TextField
  def render
    raise NotImplementedError, "#{self.class} must implement the render method"
  end
end

# Светлая кнопка и поле ввода
class LightButton < Button
  def render
    puts "Rendering light-themed button"
  end
end

class LightTextField < TextField
  def render
    puts "Rendering light-themed text field"
  end
end

# Темная кнопка и поле ввода
class DarkButton < Button
  def render
    puts "Rendering dark-themed button"
  end
end

class DarkTextField < TextField
  def render
    puts "Rendering dark-themed text field"
  end
end

# Абстрактная фабрика
class UIFactory
  def create_button
    raise NotImplementedError, "#{self.class} must implement the create_button method"
  end

  def create_text_field
    raise NotImplementedError, "#{self.class} must implement the create_text_field method"
  end
end

# Фабрика для светлой темы
class LightUIFactory < UIFactory
  def create_button
    LightButton.new
  end

  def create_text_field
    LightTextField.new
  end
end

# Фабрика для темной темы
class DarkUIFactory < UIFactory
  def create_button
    DarkButton.new
  end

  def create_text_field
    DarkTextField.new
  end
end

# Клиентский код, работающий с фабрикой
def render_interface(factory)
  button = factory.create_button
  text_field = factory.create_text_field

  button.render
  text_field.render
end

# Использование
puts "Light theme:"
render_interface(LightUIFactory.new)
# Вывод:
# Rendering light-themed button
# Rendering light-themed text field

puts "\nDark theme:"
render_interface(DarkUIFactory.new)
# Вывод:
# Rendering dark-themed button
# Rendering dark-themed text field
