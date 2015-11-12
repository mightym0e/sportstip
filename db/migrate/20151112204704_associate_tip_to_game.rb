class AssociateTipToGame < ActiveRecord::Migration
  def change
    change_table :tips do |t|
      t.belongs_to :game, index: true
    end
  end
end
