class CreateUsersTipGroups < ActiveRecord::Migration
  def change
    create_table :users_tipgroups , id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tipgroup, index: true
    end
  end
end
