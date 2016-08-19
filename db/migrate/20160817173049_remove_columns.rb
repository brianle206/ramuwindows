class RemoveColumns < ActiveRecord::Migration
  def change
  	remove_column :lectures, :article_id
  end
end
