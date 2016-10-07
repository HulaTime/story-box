class AddReviewToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :review, :text
  end
end
