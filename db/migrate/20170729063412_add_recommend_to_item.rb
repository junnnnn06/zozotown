class AddRecommendToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :recommend, :integer
  end
end
