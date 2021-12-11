class Ingredient < ApplicationRecord
  has_one :quantity
  has_many :recipes, through: :quantities

  # accepts_nested_attributes_for :quantity
end
