class HomeController < ApplicationController
  def index
  end

  def products
    @products = Product.all
  end
end
