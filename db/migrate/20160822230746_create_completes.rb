class CreateCompletes < ActiveRecord::Migration
  def change
    create_table :completes do |t|
      t.references :user
      t.references :lecture
      t.boolean :status

      t.timestamps null: false
    end
  end
end
