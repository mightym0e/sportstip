class AddDayToGames < ActiveRecord::Migration
  def change
    add_column :games, :day, :date
  end
end
