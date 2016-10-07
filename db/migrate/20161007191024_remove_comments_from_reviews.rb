class RemoveCommentsFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :comments, :text
  end
end
