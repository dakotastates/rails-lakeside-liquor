class RecipeLevel < ApplicationRecord
  belongs_to :recipe
  belongs_to :level
end
