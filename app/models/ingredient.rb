class Ingredient < ApplicationRecord
  # has_many :quantity, inverse_of: :ingredient
  has_many :quantities
  has_many :recipes, through: :quantities

  # accepts_nested_attributes_for :quantity
end
