class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :home
      t.text :guest
      t.integer :points_home
      t.integer :points_guest

      t.timestamps null: false
    end
  end
end
