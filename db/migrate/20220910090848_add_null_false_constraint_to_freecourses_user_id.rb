class AddNullFalseConstraintToFreecoursesUserId < ActiveRecord::Migration[7.0]
  def change

    change_column :freecourses, :user_id, :bigint ,null: false
  end
end
