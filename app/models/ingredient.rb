class Ingredient < ApplicationRecord
  has_one :quantity
  has_many :recipes, through: :quantities
end
