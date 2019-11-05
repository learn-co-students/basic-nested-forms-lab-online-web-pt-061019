# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

whipped_cream = Recipe.create(title: "Whipped Cream")
milk = Ingredient.create(name: "Milk", quantity: "1/2 cup", recipe_id: 1)
sugar = Ingredient.create(name: "Sugar", quantity: "2 tbs", recipe_id: 1)