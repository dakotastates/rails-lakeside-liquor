class HomeController < ApplicationController
  def index
  end

  def products
    @products = Product.all
    @categories = ProductCategory.all
  end

  def recipes
    @recipes = Recipe.all
    @levels = Level.all
  end

  def send_mail
    name = params[:name]
    email = params[:email]
    phone = params[:phone]
    body = params[:message]
    ContactMailer.contact_email(name, email, phone, body).deliver
      flash[:notice] = 'Message sent!'
      redirect_to store_path
  end
end
