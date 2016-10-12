class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :learn_id
      t.string :title

      t.timestamps null: false
    end
  end
end
