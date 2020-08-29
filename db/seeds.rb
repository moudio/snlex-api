# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
# User.delete_all
stan_smith = Product.create(name: 'Adidas Stan Smith', description: "Adidas Stan Smith", category: 'shoes', price: 800)
stan_smith.picture.attach(io: File.open("#{Rails.root}/app/pictures/stan_smith.jpg"), filename: "stan_smith", content_type: "image/jpg")

long_shirt = Product.create(name: 'Red Long shirt', description: "Long Cotton shirt ", category: 'shirt', price: 60)
long_shirt.picture.attach(io: File.open("#{Rails.root}/app/pictures/long_shirt.jpg"), filename: "long_shirt", content_type: "image/jpg")


t_shirt = Product.create(name: 'Red T shirt', description: "Red Cotton T shirt ", category: 't-shirt', price: 60)
t_shirt.picture.attach(io: File.open("#{Rails.root}/app/pictures/red_t_shirt.png"), filename: "red_t_shirt", content_type: "image/png")


converse = Product.create(name: 'Converse All Star', description: "Converse All Star", category: 'shoes', price: 600)
converse.picture.attach(io: File.open("#{Rails.root}/app/pictures/converse.jpeg"), filename: "stan_smith", content_type: "image/jpeg")



stan_smith = Product.create(name: 'Adidas Stan Smith', description: "Adidas Stan Smith", category: 'shoes', price: 800)
stan_smith.picture.attach(io: File.open("#{Rails.root}/app/pictures/stan_smith.jpg"), filename: "stan_smith", content_type: "image/jpg")



User.create({username: "mouhamadou", email:"phil@gmal.com", password: "password"})
