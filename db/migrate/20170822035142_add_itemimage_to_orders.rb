class AddItemimageToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :item_image, :text
  end
end
