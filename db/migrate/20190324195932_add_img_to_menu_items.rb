class AddImgToMenuItems < ActiveRecord::Migration[5.1]
  def change
    add_column :menu_items, :img_url, :string
  end
end
