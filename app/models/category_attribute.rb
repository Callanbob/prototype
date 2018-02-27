class CategoryAttribute < ApplicationRecord
  belongs_to :base_attribute
  belongs_to :category
end