class Level < ApplicationRecord
  # has_many :recipe_levels
  # has_many :recipes, through: :recipe_levels
  has_many :recipes
end
