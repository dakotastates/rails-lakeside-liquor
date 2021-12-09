class Recipe < ApplicationRecord
  has_many :quantities
  has_many :directions
  has_many :ingredients, through: :quantities
  has_one :recipe_level

end
