class User < ActiveRecord::Base
  has_many :user_in_tipgroups
  has_many :tipgrounps, through: :user_in_tipgroups
  has_many :tips
  has_secure_password
  validates :username,
            presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }
  def to_s
    "#{first_name} #{last_name}"
  end
end
