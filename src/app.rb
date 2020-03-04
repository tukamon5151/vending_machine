require '../src/vending_machine'

vending_machine = VendingMachine.new
vending_machine.add_money(1000)
puts vending_machine.input_amount
puts vending_machine.buy('コーラ')
puts vending_machine.sales_amount
puts vending_machine.input_amount
