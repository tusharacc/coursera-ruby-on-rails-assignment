class RecipesController < ApplicationController
  def index
    @search_term = params[:search] || 'chocolate'
    @search_result = Recipe.for(@search_term)
  end
end
