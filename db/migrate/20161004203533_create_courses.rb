class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :user_id 
      t.integer :learn_id

      t.timestamps null: false
    end
  end
end
