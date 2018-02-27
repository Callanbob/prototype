class CreateAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :base_attributes do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
