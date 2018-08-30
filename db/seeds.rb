# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

item = Item.create([
  {title: 'Ali the cat', description: Faker::Cat.breed, price: 15, image_url:'cat-1.jpg'},
  {title: 'Angelicat', description: Faker::Cat.breed, price: 10, image_url:'cat-2.jpg'},
  {title: 'Demi Meower', description: Faker::Cat.breed, price: 5, image_url:'cat-3.jpg'},
  {title: 'Catsy Cline', description: Faker::Cat.breed, price: 20, image_url:'cat-4.jpg'},
  {title: 'Butch Catsidy', description: Faker::Cat.breed, price: 10, image_url:'cat-5.jpg'},
  {title: 'Donald Tramp', description: Faker::Cat.breed, price: 10, image_url:'cat-6.jpg'},
  {title: 'Luke Skywhisker', description: Faker::Cat.breed, price: 15, image_url:'cat-7.jpg'},
  {title: 'Catzilla', description: Faker::Cat.breed, price: 10, image_url:'cat-8.jpg'},
  {title: 'Kitcat', description: Faker::Cat.breed, price: 10, image_url:'cat-9.jpg'},
  {title: 'iCat', description: Faker::Cat.breed, price: 10, image_url:'cat-10.jpg'},
  {title: 'Just Kittin', description: Faker::Cat.breed, price: 15, image_url:'cat-11.jpg'},
  {title: 'Puddy Tat', description: Faker::Cat.breed, price: 25, image_url:'cat-12.jpg'},
  {title: 'Purfect', description: Faker::Cat.breed, price: 10, image_url:'cat-13.jpg'},
  {title: 'Purrson', description: Faker::Cat.breed, price: 40, image_url:'cat-14.jpg'},
  {title: 'Ktty the cat', description: Faker::Cat.breed, price: 30, image_url:'cat-15.jpg'},
  {title: 'David Meowie', description: Faker::Cat.breed, price: 25, image_url:'cat-16.jpg'},
  {title: 'Chairman Meow', description: Faker::Cat.breed, price: 30, image_url:'cat-17.jpg'},
  {title: 'Catpernicus', description: Faker::Cat.breed, price: 5, image_url:'cat-18.jpg'},
  {title: 'Thunder Paws', description: Faker::Cat.breed, price: 20, image_url:'cat-19.jpg'},
  {title: 'The Boss', description: Faker::Cat.breed, price: 100, image_url:'cat-20.jpg'}])
