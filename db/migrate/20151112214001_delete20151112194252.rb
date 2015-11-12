class Delete20151112194252 < ActiveRecord::Migration
  def change
    remove_index :games, :liga_id
	remove_column :games, :liga_id
  end
end
