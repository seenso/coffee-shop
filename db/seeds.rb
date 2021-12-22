Customer.destroy_all
Coffee.destroy_all
Order.destroy_all

print "Creating customers..."
c1 = Customer.create(name: "Jack")
c2 = Customer.create(name: "Dolly")
c3 = Customer.create(name: "Gwen")
c4 = Customer.create(name: "Frank")

print " coffees..."
d1 = Coffee.create(title: "Americano")
d2 = Coffee.create(title: "Latte")
d3 = Coffee.create(title: "Mocha")
d4 = Coffee.create(title: "Doppio")

puts " orders..."

o1 = Order.create(price: 7.87, coffee_id: d1, customer_id:c1)
o2 = Order.create(price: 6.45, coffee_id: d2, customer_id:c2)
o3 = Order.create(price: 9.23, coffee_id: d3, customer_id:c3)
o4 = Order.create(price: 2.99, coffee_id: d4, customer_id:c4)

puts "Seeding complete!"