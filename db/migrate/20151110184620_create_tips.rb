class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.integer :points_home
      t.integer :points_guest

      t.timestamps null: false
    end
  end
end
