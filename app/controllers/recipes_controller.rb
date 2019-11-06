class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    # @ingredients = Ingredient.new
    @recipe.ingredients.build(name: "First Ingredient")
    @recipe.ingredients.build(name: "Second Ingredient")
  end

  def create
    Recipe.create(recipe_params)
   redirect_to recipes_path
    # @recipe = Recipe.new(recipe_params)
    # @recipe.save
    #
    # redirect_to recipes_path

    # @recipe = Recipe.update(recipe_params)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [
      :name,
      :quantity
      ])
  end
end
