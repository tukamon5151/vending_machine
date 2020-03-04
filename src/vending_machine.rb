class VendingMachine
  USABLE_MONEY = [10, 50, 100, 500, 1000].freeze
  attr_reader :input_amount

  def initialize
    @input_amount = 0
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

  def juice_stock_information
    {
      name: 'コーラ',
      price: 120,
      stock: 5
    }
  end

  private

  def usable_money?(money)
    USABLE_MONEY.include? money
  end
end