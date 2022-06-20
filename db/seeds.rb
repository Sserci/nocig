# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Transaction.destroy_all
Consumption.destroy_all
Cigarette.destroy_all
User.destroy_all


benson = Cigarette.create(brand: "Benson & Hedges blue", price: 10)
Cigarette.create(brand: "Camel Black", price: 10)
Cigarette.create(brand: "Camel Blue", price: 10)
Cigarette.create(brand: "Chesterfield blue", price: 10)
Cigarette.create(brand: "Chesterfield Original Blue", price: 10)
Cigarette.create(brand: "Chesterfield Original Red", price: 10)
Cigarette.create(brand: "Craven A Rouge", price: 10.60)
Cigarette.create(brand: "Gauloises Brunes", price: 11.20)
Cigarette.create(brand: "Gitanes", price: 11.60)
Cigarette.create(brand: "Lucky Strike Bleu", price: 10)
Cigarette.create(brand: "Lucky Strike Gold", price: 10)
Cigarette.create(brand: "Marlboro Gold (paquet rigide)", price: 10.50)
Cigarette.create(brand: "Marlboro Red (paquet rigide)", price: 10.50)
Cigarette.create(brand: "Philip Morris Filter Kings (paquet rigide)", price: 10)
Cigarette.create(brand: "Vogue L'Essentielle bleue", price: 10.60)
Cigarette.create(brand: "Vogue L'Originale Blanche", price: 10.50)
Cigarette.create(brand: "Vogue L'Originale Bleue", price: 10.50)
Cigarette.create(brand: "Winfield rouge", price: 9.90)
Cigarette.create(brand: "Winston Authentic", price: 10.20)
Cigarette.create(brand: "Winston Blue", price: 10)

user1 = User.create(email: "gb@gmail.com", password: 123456, first_name: "greg", last_name: "bert")

Consumption.create(quantity: 4, cigarette: benson, user: user1, date: Date.today)
