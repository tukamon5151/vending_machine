require '../src/juice_stock'

class VendingMachine
  USABLE_MONEY = [10, 50, 100, 500, 1000].freeze
  attr_reader :input_amount, :sales_amount, :juice_stocks

  def initialize
    @input_amount = 0
    @sales_amount = 0
    @juice_stocks = [
      JuiceStock.new('コーラ', 120, 5),
      JuiceStock.new('レッドブル', 200, 5),
      JuiceStock.new('水', 100, 5)
    ]
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

  def buy(juice_name)
    juice_stock = find_juice_stock(juice_name)
    return unless juice_stock && juice_stock.buy(@input_amount)
    @sales_amount += juice_stock.price
    @input_amount -= juice_stock.price
    return_money
  end

  def juice_stock_information
    juice_stocks.map(&:to_h)
  end

  def buyable_juice_list
    buyable_juice_stocks.map(&:name)
  end

  private

  def buyable_juice_stocks
    juice_stocks.select { |juice_stock| juice_stock.buyable?(@input_amount) }
  end

  def find_juice_stock(juice_name)
    juice_stocks.find { |juice_stock| juice_stock.name == juice_name }
  end

  def usable_money?(money)
    USABLE_MONEY.include? money
  end
end