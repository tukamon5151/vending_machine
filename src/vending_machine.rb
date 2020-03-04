class VendingMachine
  USABLE_MONEY = [10, 50, 100, 500, 1000].freeze
  attr_reader :input_amount, :sales_amount
  COLA_PRICE = 120

  def initialize
    @input_amount = 0
    @sales_amount = 0
    @cola_stock = 5
  end

  def add_money(money)
    return money unless usable_money? money
    @input_amount += money
  end

  def return_money
    tmp_total_money = @input_amount
    @input_amount   = 0
    tmp_total_money
  end

  def buy
    return unless buyable?
    @cola_stock -= 1
    @sales_amount += COLA_PRICE
    @input_amount -= COLA_PRICE
  end

  def buyable?
    stock_available? && has_enough_money?
  end

  def juice_stock_information
    {
      name: 'コーラ',
      price: COLA_PRICE,
      stock: @cola_stock
    }
  end

  private

  def stock_available?
    @cola_stock.positive?
  end

  def has_enough_money?
    COLA_PRICE < @input_amount
  end

  def usable_money?(money)
    USABLE_MONEY.include? money
  end
end