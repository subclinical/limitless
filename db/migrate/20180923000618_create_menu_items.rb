class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :category
      t.string :subcategory
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.integer :serving_size, default: 1
      t.timestamps
    end
  end
end
