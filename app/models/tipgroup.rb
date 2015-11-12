class Tipgroup < ActiveRecord::Base
  has_many :user_in_tipgroups
  has_many :users, through: :user_in_tipgroups
end
