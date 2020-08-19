# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
product = Product.create(name: 'Product 1', description: "Description for product 1", category: 'shoes', price: 800)
product.picture.attach(io: File.open("#{Rails.root}/app/pictures/test_picture.jpg"), filename: "couple.jpg", content_type: "image/jpg")
Cat.create({name: "Spot", age: 11, favorite_food: "salmon"})

User.create({username: "mouhamadou", email:"phil@gmal.com", password: "password"})
