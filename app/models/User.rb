class User

  @@all = []

  def initialize(user_name)
    @user_name = user_name
    @@all << self
    #add new instances to the class variable
  end

  def self.all
    #return all instance
    @@all
  end

  def recipes
    result = []
    #   # loop over all the recipe card
      RecipeCard.all.each do |card|
        if card.user == self
          result << card.recipe
        end
       end
      result
  end

  def add_recipe_card(recipe, date, rating)
      RecipeCard.new(recipe, self, rating, date)
  end


  def declare_allergen(ingredient)
      Allergen.new(self, ingredient)
  end


  def allergens
    result = []
    #   # loop over all the recipe card
      Allergen.all.each do |item|
        if item.user == self
          result << item.allergen
        end
       end
      result
  end

  def top_three_recipes
    top_three = []
    RecipeCard.all.each do |card|
      if card.user == self
        top_three << card
      end
    end
    top_three
  end


  def most_recent_recipe
    last_recipe = []
    RecipeCard.all.each do |card|
      if card.user == self
        last_recipe << card
      end
    end
    last_recipe.first
  end

end
