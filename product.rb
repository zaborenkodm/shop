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
end