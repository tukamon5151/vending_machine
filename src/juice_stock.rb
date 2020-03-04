class JuiceStock
  attr_reader :name, :price, :stock
  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end

  def to_h
    {
      name: name,
      price: price,
      stock: stock
    }
  end

  def buy(amount)
    return false unless buyable?(amount)
    @stock -= 1
  end

  def buyable?(amount)
    enough_stock? && enough_amount?(amount)
  end

  private

  def enough_amount?(amount)
    @price < amount
  end

  def enough_stock?
    @stock.positive?
  end
end