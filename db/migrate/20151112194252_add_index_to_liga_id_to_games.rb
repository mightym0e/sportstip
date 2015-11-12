class AddIndexToLigaIdToGames < ActiveRecord::Migration
  def change
	add_column :games, :liga_id, :integer
	add_index :games, :liga_id
  end
end
