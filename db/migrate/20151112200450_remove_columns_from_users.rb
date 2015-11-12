class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
	remove_column :users, :default
	remove_column :users, :false
  end
end
