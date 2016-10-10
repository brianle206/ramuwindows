class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :users 
      t.references :learn 

      t.timestamps null: false
    end
  end
end
