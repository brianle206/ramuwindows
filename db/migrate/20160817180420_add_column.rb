class AddColumn < ActiveRecord::Migration
  def change
  	add_column :lectures, :article_id, :integer
  end
end
