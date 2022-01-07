class Product < ApplicationRecord
  has_many :pairings, dependent: :delete_all
  has_many :recipes, through: :pairings
  belongs_to :product_category
end
