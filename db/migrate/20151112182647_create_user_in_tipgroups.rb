class CreateUserInTipgroups < ActiveRecord::Migration
  def change
    create_table :user_in_tipgroups do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tipgroup, index: true

      t.timestamps null: false
    end
  end
end
