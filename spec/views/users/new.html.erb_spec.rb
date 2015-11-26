require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :username => "MyText",
      :email => "MyText",
      :isadmin => false,
      :password => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "textarea#user_username[name=?]", "user[username]"

      assert_select "textarea#user_email[name=?]", "user[email]"

      assert_select "input#user_isadmin[name=?]", "user[isadmin]"

      assert_select "input#user_password_digest[name=?]", "user[password_digest]"
    end
  end
end
