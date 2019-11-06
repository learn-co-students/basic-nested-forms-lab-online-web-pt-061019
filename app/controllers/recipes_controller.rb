class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save

    # @recipe = Recipe.update(recipe_params)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, recipe_ingredients: [
      :name,
      :quantity
      ])
  end
end
