class Change < ActiveRecord::Migration
  def change
    rename_column :lectures, :article_id, :learn_id

  end
end
