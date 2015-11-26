class ChangeDefaultValueForAdminUsers < ActiveRecord::Migration
  def change
    change_column :users, :isadmin, :boolean, :default => false
  end
end
