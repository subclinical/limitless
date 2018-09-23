# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MenuItem.destroy_all

MenuItem.create(
  name: "Sweet and Sour Chicken",
  description: "Some basic, basic asian dish",
  category: "main",
  subcategory: "chicken",
  price: 12.99
)

MenuItem.create(
  name: "Popcorn Chicken",
  description: "Popcorn but not really, popchicken",
  category: "main",
  subcategory: "chicken",
  price: 9.99
)

MenuItem.create(
  name: "Lobster Tail Dinner",
  description: "Hell yeah now we talkin'",
  category: "main",
  subcategory: "seafood",
  price: 12.99
)

MenuItem.create(
  name: "Sweet and Sour Chicken",
  description: "Some basic, basic asian dish",
  category: "main",
  subcategory: "chicken",
  price: 31.99
)

MenuItem.create(
  name: "White Chocolate Brownie",
  description: "Watch yourself",
  category: "dessert",
  price: 8.99
)

MenuItem.create(
  name: "Crispy Calamari",
  description: "Foolproof appe",
  category: "appetizer",
  price: 14.99
)

MenuItem.create(
  name: "BBQ Feast",
  description: "This is enough food",
  category: "main",
  subcategory: "special",
  price: 52.99
)