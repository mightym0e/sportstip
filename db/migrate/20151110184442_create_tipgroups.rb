class CreateTipgroups < ActiveRecord::Migration
  def change
    create_table :tipgroups do |t|
      t.text :name
      t.text :owner

      t.timestamps null: false
    end
  end
end
