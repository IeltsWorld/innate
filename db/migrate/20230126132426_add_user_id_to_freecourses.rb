class AddUserIdToFreecourses < ActiveRecord::Migration[7.0]
  def change
    add_column :freecourses, :user_id, :integer
  end
end
