class CreateUserQuizAnswers < ActiveRecord::Migration
  def change
    create_table :user_quiz_answers do |t|
      t.integer :user_id
      t.integer :quiz_id
      t.integer :question_id
      t.integer :answer_id

      t.timestamps null: false
    end
  end
end
