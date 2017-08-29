class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer      :star_rate
      t.text         :reviwe
      t.integer      :user_id
      t.integer      :item_id
      t.integer      :order_id
      t.timestamps
    end
  end
end
