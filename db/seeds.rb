# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: 'Pen Drive', description: 'Pen Drive with TDC logo', amount: 10.99)
Product.create(name: 'Mouse', description: 'Mouse optical', amount: 39.99)
Product.create(name: 'Notebook one', description: 'Notebook top!', amount: 2500)
5000.times do |number|
    Product.create(name: "Notebook #{number}", description: "Notebook #{number}", amount: 2900.99+number)
end

Customer.create(name:'Manoel Souza', score: 5)
Customer.create(name:'João Souza', score: 7)
Customer.create(name:'Carlos Silva', score: 8)
Customer.create(name:'José Dias Souza', score: 9)
Customer.create(name:'Ricardo Silva', score: 10)
Customer.create(name:'Maria Silva', score: 5)
Customer.create(name:'Joana Souza', score: 5)
Customer.create(name:'Josefina Mendes', score: 9)
Customer.create(name:'Rita Neves', score: 10)
Customer.create(name:'Manoel Ramos', score: 9)
Customer.create(name:'Gabriela Pontes', score: 7)
Customer.create(name:'Maria de Medeiros', score: 9)

10000.times do |number|
  Order.create(
    customer_id: Random.rand(12),
    order_items: [OrderItem.new(product_id: Random.rand(5000), product_quantity: Random.rand(5))]
  )
end
