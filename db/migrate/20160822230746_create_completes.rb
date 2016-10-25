class CreateCompletes < ActiveRecord::Migration
  def change
    create_table :completes do |t|
      t.interger :user_id
      t.interger :lecture_id
      t.boolean :status

      t.timestamps null: false
    end
  end
end
