class HomeController < ApplicationController
  def index
  end

  def products
    @products = Product.all
  end

  def recipes
    @recipes = Recipe.all
  end
end
