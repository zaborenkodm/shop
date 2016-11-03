# encoding: utf-8
# Программа-магазин музыки, книг и фильмов

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Подключаем классы товара ...
require_relative 'product.rb'

# и трёх классов-детей: книги, муз. диска и фильма
require_relative 'book.rb'
require_relative 'disk.rb'
require_relative 'movie.rb'

# новый товар - фильм
leon = Movie.new(990, 4)

leon.update(:title => 'Леон', :director_name => 'Люк Бессон', :year => '1994')

puts leon.show