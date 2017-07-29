class AddPopularToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :popular, :integer
  end
end
