class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  # def recipe_ingredients=(content)
  #   self.recipe
  # end

  def recipe_ingredients=(contents) # Setters how do they work ???
    contents.each do |c|
      self.ingredients << Ingredient.find_or_create_by(name: c["name"], quantity: c["quantity"])
    end
  end

  # params["recipe"]["recipe_ingredients"].first


  # t.string   "name"
  # t.string   "quantity"

  # recipe[recipe_ingredients][]

#   def artist_name=(name)
#   self.artist = Artist.find_or_create_by(name: name)
# end
#
# def artist_name
#   self.artist ? self.artist.name : nil
# end
end
