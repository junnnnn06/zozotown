class RenameNameColumnToOrders < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :name, :item_name
  end
end
