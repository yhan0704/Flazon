# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Category.destroy_all
Item.destroy_all
User.destroy_all
Rating.destroy_all
UserItem.destroy_all


toy = Category.create(name:"Toy")
food = Category.create(name:"Food")
electronic = Category.create(name:"Electronic")
shoe = Category.create(name:"Shoe")
clothing = Category.create(name:"Clothing")
movie = Category.create(name:"Movie")

young = User.create(name:"Young", email:"young@flat.com", password:"asdf1234")
jose = User.create(name:"Jose", email:"jose@flat.com", password:"asdf1234")
will = User.create(name:"Will", email:"will@flat.com", password:"asdf1234")
jasur = User.create(name:"Jasur", email:"jasur@flat.com", password:"asdf1234")
remi = User.create(name:"Remi", email:"remi@flat.com", password:"asdf1234")
sara = User.create(name:"Sara", email:"sara@flat.com", password:"asdf1234")
ryan = User.create(name:"Ryan", email:"ryan@flat.com", password:"asdf1234")

car = Item.create(name:"Car", price:10.34, category:toy)
rubberduck = Item.create(name:"Rubber Duck", price:8.99, category:toy)
lego = Item.create(name:"Lego", price:200.34, category:toy)
barbie = Item.create(name:"Barbie Doll", price:42.34 , category:toy)
ball = Item.create(name:"Basket Ball", price:3.34, category:toy)
toystory = Item.create(name:"Toy Story", price:130.23, category:toy)
cube = Item.create(name:"Cube", price:5.23 , category:toy)
actionfigure = Item.create(name:"Action Figure", price:200.56, category:toy)
lightsword = Item.create(name:"Light Sword", price:13.67, category:toy)

cake = Item.create(name:"Cake", price:32.32 , category:food)
cookie = Item.create(name:"Cookie", price:12.45 , category:food)
bread = Item.create(name:"Bread", price:9.99 , category:food)
taco = Item.create(name:"Cake", price:3.67 , category:food)
burrito = Item.create(name:"Cake", price:32.32 , category:food)
sushi = Item.create(name:"Cake", price:32.32 , category:food)

tv = Item.create(name:"TV", price:314.23 , category:electronic)
adiads = Item.create(name:"Adidas", price:40.33 , category:shoe)
tshirt = Item.create(name:"Tshirt", price:9.99 , category:clothing)
Item.create(name:"", price: , category)
Item.create(name:"", price: , category)
Item.create(name:"", price: , category)
Item.create(name:"", price: , category)











