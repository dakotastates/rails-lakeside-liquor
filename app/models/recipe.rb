class Recipe < ApplicationRecord
  has_many :quantities
  has_many :directions, dependent: :delete_all
  has_many :ingredients, through: :quantities

  belongs_to :level

  accepts_nested_attributes_for :directions, reject_if: proc { |attributes| attributes['direction'].blank? }

end
