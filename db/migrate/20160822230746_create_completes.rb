class CreateCompletes < ActiveRecord::Migration
  def change
    create_table :completes do |t|
      t.integer :user_id
      t.integer :lecture_id
      t.boolean :status

      t.timestamps null: false
    end
  end
end
