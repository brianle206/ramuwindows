class CreateUserQuizResults < ActiveRecord::Migration
  def change
    create_table :user_quiz_results do |t|
      t.integer :user_id
      t.integer :quiz_id
      t.integer :score
      t.boolean :retake, default: true
      t.integer :attempts, default: 0

      t.timestamps null: false
    end
  end
end
