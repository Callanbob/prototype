class Category < ApplicationRecord
  
  # associations
  has_many :category_attributes
  has_many :base_attributes, through: :category_attributes
  
  # validations
  validates :name, uniqueness: true
  
  # add attribute to category. if category does not exist create new one, otherwise
  # append existing attribute to the base attributes association
  def add_attribute(attribute_name)
    if self.base_attributes.create(:name => attribute_name)
      return true
    else
      self.base_attributes << BaseAttribute.find_by(:name => attribute)
    end
  end
  
  # get parent category
  def get_parent
    return Category.find(self.parent_category_id)
  end
  
  # set parent category
  def set_parent(id)
    self.update_attribute(:parent_category_id, id)
  end
  
  # get children
  def get_children
    return Category.where(:parent_category_id => self.id)
  end
  
  # print attributes
  def print_attributes
    self.base_attributes.each do |a|
      puts "#{a.name} "
    end
  end
end
