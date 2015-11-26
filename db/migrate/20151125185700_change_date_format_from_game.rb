class ChangeDateFormatFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :day
    add_column :games, :date, :datetime
  end
end
