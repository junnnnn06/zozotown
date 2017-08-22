class RenamePriceColumnToOrders < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :price, :item_price
  end
end
