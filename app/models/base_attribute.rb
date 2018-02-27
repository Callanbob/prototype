class BaseAttribute < ApplicationRecord
  
  # associations
  has_many :category_attributes
  has_many :select_options
  has_many :categories, through: :category_attributes
  
  # validations
  validates :name, uniqueness: true
end
