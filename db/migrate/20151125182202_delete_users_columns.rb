class DeleteUsersColumns < ActiveRecord::Migration
  def change
    remove_column :users, :string
	  remove_column :users, :password
  end
end
