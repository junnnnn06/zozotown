class RenameReviweColumnToReviews < ActiveRecord::Migration[5.0]
  def change
    rename_column :reviews, :reviwe, :review
  end
end
