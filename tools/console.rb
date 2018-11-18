require_relative '../config/environment.rb'


burger = Recipe.new("burger")
taco = Recipe.new("taco")

sam = User.new("sam")
mary = User.new("mary")

RecipeCard.new(burger, sam, 4, "November 2, 2018")
RecipeCard.new(burger, sam, 3, "November 1, 2018")
RecipeCard.new(burger, mary, 2, "November 3, 2018")
RecipeCard.new(taco, mary, 5, "November 4, 2018")

bread = Ingredient.new("bread")
flour = Ingredient.new("flour")
steak = Ingredient.new("steak")
hot_sauce = Ingredient.new("hot sauce")
salsa = Ingredient.new("salsa")


RecipeIngredient.new(burger, bread)
RecipeIngredient.new(taco, flour)

Allergen.new(sam, bread)
Allergen.new(mary, flour)

array_ingredients = [hot_sauce, salsa]

binding.pry
