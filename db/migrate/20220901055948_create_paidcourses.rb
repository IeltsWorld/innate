class CreatePaidcourses < ActiveRecord::Migration[7.0]
  def change
    create_table :paidcourses do |t|
      t.string :name
      t.text :headling
      t.text :description
      t.string :author
      t.string :type
      t.integer :reviews_count
      t.decimal :average_rating

      t.timestamps
    end
  end
end
