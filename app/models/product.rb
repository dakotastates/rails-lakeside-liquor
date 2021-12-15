class Product < ApplicationRecord
  has_many :pairings, dependent: :delete_all
  belongs_to :product_category
end
