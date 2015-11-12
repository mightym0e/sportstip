class UserInTipgroup < ActiveRecord::Base
  belongs_to :user
  belongs_to :tipgroup
end
