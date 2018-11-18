require 'pry'
class Recipe
  #create @@all variable
  attr_reader :recipe_name
  @@all = []

  def initialize(recipe_name)
    @recipe_name = recipe_name
    #add new instances to the class variable
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    #should return instance with highest users
    #loop through recipe cards
    #return all instance
    # create an empty array to
      result = []
      RecipeCard.all.each do |card|
        result << card.recipe.recipe_name
      end
      result.sample
  end

  def users
    result = []
    #   # loop over all the recipe card
      RecipeCard.all.each do |card|
        if card.recipe == self
          result << card.user
        end
       end
      result
  end
  def ingredients
    result = []
    #   # loop over all the recipe card
      RecipeIngredient.all.each do |item|
        if item.recipe == self
          result << item.ingredient
        end
       end
      result
  end

  def allergens
    result = []
    self.ingredients.each do |ingredient|

      #   # loop through allergen
        Allergen.all.each do |item|
          if item.ingredient == ingredient
            result << ingredient
          end
         end
      end
      result
    end

  def add_ingredients(array)
    array.each do |item|
      RecipeIngredient.new(self, item)
    end
  end

end
