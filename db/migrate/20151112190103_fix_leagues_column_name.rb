class FixLeaguesColumnName < ActiveRecord::Migration
  def change
    rename_column :leagues, :type, :sport
  end
end
