# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
factor = 1000
Product.create(name: 'Pen Drive', description: 'Pen Drive with TDC logo', amount: 10.99)
Product.create(name: 'Mouse', description: 'Mouse optical', amount: 39.99)
Product.create(name: 'Notebook one', description: 'Notebook top!', amount: 2500)
(factor*5).times do |number|
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

ShippingCompany.create(name:'Transportadora All', delivery_cost: 0.01)
ShippingCompany.create(name:'Transportadora Plus', delivery_cost: 0.03)

(factor*10).times do |number|
  Order.create(
    customer_id: rand(1..12),
    order_items: [
      OrderItem.new(
        product_id: rand(1..factor*5),
        product_quantity: rand(1..5),
        delivery: Delivery.new(shipping_company_id: rand(1..2), status: ["ENVIADO AO CLIENTE","ENTREGUE","PENDENTE"].sample)
      )
    ],
    status: ["EM ABERTO","ENTREGUE"].sample
  )
end
