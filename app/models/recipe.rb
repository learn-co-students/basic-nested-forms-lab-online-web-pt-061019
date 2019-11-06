class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  # def recipe_ingredients=(contents) # Setters how do they work ???
  #   contents.each do |c|
  #     self.ingredients << Ingredient.find_or_create_by(name: c["name"], quantity: c["quantity"])
  #   end
  # end

end
