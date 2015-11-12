class AssociateGameToLeague < ActiveRecord::Migration
  def change
    change_table :games do |t|
      t.belongs_to :league, index: true
    end
  end
end
