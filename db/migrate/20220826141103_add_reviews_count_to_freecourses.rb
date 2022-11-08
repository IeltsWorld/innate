class AddReviewsCountToFreecourses < ActiveRecord::Migration[7.0]
  def change
    add_column :freecourses, :reviews_count, :integer
  end
end
