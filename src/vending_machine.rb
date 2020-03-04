class VendingMachine
  attr_reader :total_money

  def initialize
    @total_money = 0
  end

  def add_money(money)
    @total_money += money
  end

  def return_money
    tmp_total_money = @total_money
    @total_money = 0
    tmp_total_money
  end
end