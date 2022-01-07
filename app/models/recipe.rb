class Recipe < ApplicationRecord
  has_many :quantities, dependent: :delete_all
  # has_many :quantities, inverse_of: :recipe, dependent: :delete_all
  has_many :directions, dependent: :delete_all
  has_many :ingredients, through: :quantities
  has_many :pairings, dependent: :delete_all
  has_many :products, through: :pairings

  belongs_to :level

  accepts_nested_attributes_for :directions, allow_destroy: true, reject_if: proc { |attributes| attributes['direction'].blank? }
  accepts_nested_attributes_for :quantities, :reject_if => :all_blank, :allow_destroy => true

  # accepts_nested_attributes_for :ingredients
  # accepts_nested_attributes_for :quantities, allow_destroy: true, reject_if: proc { |attributes| attributes['quantity'].blank? || attributes['ingredient_attributes']['ingredient'].blank?}
  # accepts_nested_attributes_for :quantities,  :reject_if => proc { |attrs| attrs[:quantity].blank? || attrs[:ingredient_attributes][:ingredient].blank?} #ignore any new record hashes if they fail to pass
  # accepts_nested_attributes_for :ingredients, reject_if: lambda {|attributes| attributes['ingredient'].blank?}
  # accepts_nested_attributes_for :quantities, reject_if: lambda {|attributes| attributes['quantity'].blank?}

end
