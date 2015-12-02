require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end

  def login_admin
    login('admin@admin.de')
  end

  def login(user)
    user = User.where(:email => user.to_s).first
    session[:user_id] = user.id
  end

  def current_user
    User.find(request.session[:user_id])
  end

RSpec.describe UsersHelper, type: :helper do
  pending "add some examples to (or delete) #{__FILE__}"
end
