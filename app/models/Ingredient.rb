class Ingredient

  @@all = []

  def initialize(ingredient_name)
    @ingredient_name = ingredient_name
    @@all << self
    #add new instances to the class variable
  end

  def self.all
    #return all instance

    @@all
  end

end
