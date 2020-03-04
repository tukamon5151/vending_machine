require '../src/vending_machine'

vending_machine = VendingMachine.new

vending_machine.add_money(10)
puts vending_machine.input_amount
vending_machine.add_money(10)
puts vending_machine.input_amount
vending_machine.add_money(50)
puts vending_machine.input_amount

puts vending_machine.return_money
puts vending_machine.input_amount

puts vending_machine.add_money(10000)
puts vending_machine.input_amount

puts vending_machine.buy('コーラ')
puts vending_machine.sales_amount

vending_machine.add_money(500)
puts vending_machine.input_amount
puts vending_machine.juice_stock_information
puts vending_machine.buyable_juice_list

puts vending_machine.buy('コーラ')
puts vending_machine.juice_stock_information
puts vending_machine.buyable_juice_list
puts vending_machine.sales_amount
puts vending_machine.input_amount
puts vending_machine.buy('レッドブル')
puts vending_machine.sales_amount
puts vending_machine.input_amount
puts vending_machine.juice_stock_information
puts vending_machine.buyable_juice_list
puts vending_machine.buy('レッドブル')
puts vending_machine.sales_amount
puts vending_machine.input_amount
puts vending_machine.juice_stock_information
puts vending_machine.buyable_juice_list
vending_machine.add_money(500)
puts vending_machine.buy('レッドブル?')
puts vending_machine.sales_amount
puts vending_machine.input_amount
puts vending_machine.juice_stock_information
puts vending_machine.buyable_juice_list
vending_machine.add_money(1000)
puts vending_machine.buy('レッドブル')
puts vending_machine.buy('レッドブル')
puts vending_machine.buy('レッドブル')
puts vending_machine.buy('レッドブル')
puts vending_machine.sales_amount
puts vending_machine.input_amount
puts vending_machine.juice_stock_information
puts vending_machine.buyable_juice_list
puts vending_machine.buy('レッドブル')
puts vending_machine.sales_amount
puts vending_machine.input_amount
puts vending_machine.juice_stock_information
puts vending_machine.buyable_juice_list
