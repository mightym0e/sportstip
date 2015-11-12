class AddIsadminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isadmin, :boolean
    add_column :users, :default, :string
    add_column :users, :false, :string
  end
end
