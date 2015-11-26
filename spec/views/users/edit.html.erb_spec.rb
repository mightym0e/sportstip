require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :username => "MyText",
      :email => "MyText",
      :isadmin => false,
      :password_digest => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "textarea#user_username[name=?]", "user[username]"

      assert_select "textarea#user_email[name=?]", "user[email]"

      assert_select "input#user_isadmin[name=?]", "user[isadmin]"

      assert_select "input#user_password_digest[name=?]", "user[password_digest]"
    end
  end
end
