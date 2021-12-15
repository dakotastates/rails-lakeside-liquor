class Recipe < ApplicationRecord
  has_many :quantities, dependent: :delete_all
  has_many :directions, dependent: :delete_all
  has_many :ingredients, through: :quantities
  has_many :pairings, dependent: :delete_all

  belongs_to :level

  accepts_nested_attributes_for :directions, reject_if: proc { |attributes| attributes['direction'].blank? }
  # accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['ingredient'].blank? }
  accepts_nested_attributes_for :quantities, reject_if: proc { |attributes| attributes['quantity'].blank? }

end
