class Recipe < ApplicationRecord
  has_many :quantities
  has_many :directions
  has_many :ingredients, through: :quantities

  belongs_to :level

  # accepts_nested_attributes_for :level

end
