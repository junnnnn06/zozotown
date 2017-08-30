class RemoveOrderidFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :order_id, :integer
  end
end
