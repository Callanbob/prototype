class CreateCategoryAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :category_attributes do |t|
      t.integer :base_attribute_id
      t.integer :category_id
      t.timestamps
    end
  end
end
