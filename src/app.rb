require '../src/vending_machine'

vending_machine = VendingMachine.new

vending_machine.add_money(10)
puts vending_machine.amount
vending_machine.add_money(10)
puts vending_machine.amount
vending_machine.add_money(50)
puts vending_machine.amount

puts vending_machine.return_money
puts vending_machine.amount
