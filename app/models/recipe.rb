class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients_attr)
    # binding.pry
    ingredients_attr.each do | i, ingredients_attr|
      self.ingredients.build(ingredients_attr)
    end
  end


end
