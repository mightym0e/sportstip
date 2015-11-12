class User < ActiveRecord::Base
  has_many :user_in_tipgroups
  has_many :tipgrounps, through: :user_in_tipgroups
  has_many :tips
end
