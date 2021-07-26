Customer.destroy_all
Drink.destroy_all
Order.destroy_all

Customer.create(name: "Goku")
Customer.create(name: "Gohan")
Customer.create(name: "Vegeta")

Drink.create(name: "Peanut Butter Mocha", ingredients: "peanut butter, cocoa powder, sugar, espresso, steamed milk, cinnamon", price: 9)
Drink.create(name: "Vanilla Latte", ingredients: "vanilla syrup, steamed milk, espresso, whipped cream", price: 7)
Drink.create(name: "Black Cold Brew", ingredients: "only coffee, in a cup, brewed cold, vee strong", price: 4)

Order.create(drink_id: Drink.first.id, customer_id: Customer.first.id)
Order.create(drink_id: Drink.second.id, customer_id: Customer.first.id)
Order.create(drink_id: Drink.third.id, customer_id: Customer.first.id)
Order.create(drink_id: Drink.second.id, customer_id: Customer.second.id)
Order.create(drink_id: Drink.third.id, customer_id: Customer.third.id)