class AssociateUserToTip < ActiveRecord::Migration
  def change
    change_table :tips do |t|
      t.belongs_to :user, index: true
    end
  end
end
