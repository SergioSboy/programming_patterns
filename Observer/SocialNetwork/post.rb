class Post
  attr_reader :observers

  def initialize(content)
    @content = content
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def like
    puts "Кто-то лайкнул пост: #{@content}"
    notify_observers("Лайк")
  end

  def comment(text)
    puts "Кто-то оставил комментарий: #{text} на пост: #{@content}"
    notify_observers("Комментарий: #{text}")
  end

  def share
    puts "Кто-то поделился постом: #{@content}"
    notify_observers("Репост")
  end

  private

  def notify_observers(event)
    @observers.each { |observer| observer.update(event) }
  end
end