# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
# ingredient database
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url).read

results = JSON.parse(file)["drinks"]

results.each do |result|
  Ingredient.create(name: result["strIngredient1"])
end

# cocktail_database
# cocktail_url = 'https://raw.githubusercontent.com/teijo/iba-cocktails/master/recipes.json'
# cocktails_data = JSON.parse(open(cocktail_url).read)

# cocktails_data.first(10).each do |c|
#   Cocktail.create(name: c["name"])
# end
# puts "Created #{Cocktail.count} "
