# Класс Наблюдатель
class Observer
  def update(event)
    puts "Наблюдатель получил обновленные данные #{event}"
  end
end

# Класс Субъект
class Subject
  def initialize
    @observers = []
  end

  # Добавление подписчика
  def add_observer(observer)
    @observers << observer
  end
  # Удаление подписчика
  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers(event)
    @observers.each { |observer| observer.update(event) }
  end

  def change_state(event)
    puts "Изменение состояния #{event}"
    notify_observers(event)
  end
end

# Пример

observer1 = Observer.new
observer2 = Observer.new

subject = Subject.new
subject.add_observer(observer1)
subject.add_observer(observer2)

subject.change_state("Состояние изменено на активное  ")