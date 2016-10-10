class AddLearnIdToCompleteTable < ActiveRecord::Migration
  def change
  	add_column :completes, :learn_id, :integer
  end
end
