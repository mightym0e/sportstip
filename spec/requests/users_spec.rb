require 'rails_helper'

RSpec.describe "Users", type: :request do
  # before :each do
  #   @email = 'admin@admin.de'
  #   @password = 'admin'
  #   User.create(
  #     username: 'admin',
  #     password: @password,
  #     email: @email,
  #     isadmin: true
  #   )
  #   visit login_path
  #   fill_in 'email', :with => @email
  #   fill_in 'password', :with => @password
  #   click_button 'Log In'
  # end

  describe "GET /users" do
    it "works! (now write some real specs)" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end
end
