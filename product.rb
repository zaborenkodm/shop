# encoding: utf-8

class Product
  def initialize(price, amount)
    @price = price
    @amount_available = amount
  end

  def price
    @price
  end

# абстрактный метод родительского класса, который будет переопределяться
  def update
  end

  def info
  end

  def show
    "#{info} - #{@price} руб. [осталось: #{@amount_available}]"
  end

  def self.showcase(products)
    puts "Что хотим купить?\n\n"

    products.each_with_index do |product, index|
      puts "#{index}: #{product.show}"
    end

    puts "\n"
  end

  def buy
    if @amount_available > 0
      puts "* * *"
      puts "Вы купили товар #{info}"
      puts "* * *\n\n"

      @amount_available -= 1
      price
    else
      puts "К сожалению, больше нет"
      0
    end
  end
end