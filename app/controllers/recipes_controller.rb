require "awesome_print"
  
class RecipesController < ApplicationController
  def index
    @search = "chocolate"
    @recipes = Recipe.for(@search)
  end
end