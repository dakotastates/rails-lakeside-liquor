class Product < ApplicationRecord
  has_many :pairings, dependent: :delete_all
end
