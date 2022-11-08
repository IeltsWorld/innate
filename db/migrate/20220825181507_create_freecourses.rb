class CreateFreecourses < ActiveRecord::Migration[7.0]
  def change
    create_table :freecourses do |t|
      t.string :name
      t.text :headling
      t.text :description
      t.string :author
      t.string :type

      t.timestamps
    end
  end
end
