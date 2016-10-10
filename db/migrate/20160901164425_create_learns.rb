class CreateLearns < ActiveRecord::Migration
  def change
    create_table :learns do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
