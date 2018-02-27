class CreateSelectOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :select_options do |t|
      t.string :name
      t.string :description
      t.integer :base_attribute_id
      t.timestamps
    end
  end
end
