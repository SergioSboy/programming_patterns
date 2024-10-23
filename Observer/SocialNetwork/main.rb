require_relative 'user'
require_relative 'post'

# Пример использования
post = Post.new("Мой первый пост!")
user1 = User.new("Алекс")
user2 = User.new("Маша")

post.add_observer(user1)
post.add_observer(user2)

post.like     # => Алекс получил уведомление: Лайк, Маша получила уведомление: Лайк
post.comment("Отличный пост!") # => Алекс получил уведомление: Комментарий, Маша получила уведомление: Комментарий
post.share  # => Алекс получил уведомление: Репост, Маша получила уведомление: Репост
puts post.observers.inspect