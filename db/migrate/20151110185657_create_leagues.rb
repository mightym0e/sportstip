class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.text :name
      t.text :type

      t.timestamps null: false
    end
  end
end
