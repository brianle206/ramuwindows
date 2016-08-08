class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :title
      t.text :content
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
