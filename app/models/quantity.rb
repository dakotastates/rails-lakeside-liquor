class Quantity < ApplicationRecord
  # attr_accessor :quantity, :ingredient, :ingredient_attributes


  belongs_to :recipe
  belongs_to :ingredient

  # attr_accessor :ingredient_attributess


  accepts_nested_attributes_for :ingredient, allow_destroy: true, :reject_if => :all_blank

  # def ingredient_attributes=(ingredient_attributes)
  #   ingredient_attributes.values.each do |i|
  #       if i != ""
  #           ingredient = Ingredient.find_or_create_by(ingredient: i.downcase)
  #           self.ingredient = ingredient
  #       end
  #   end
  # end

  def ingredient_name
    self.ingredient.ingredient if !self.id.nil?
  end

  def ingredient_name=(ingredient)
    @ingredient = Ingredient.find_or_create_by(ingredient: ingredient)
    self.ingredient = @ingredient
  end

end
