require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :username => "user",
        :email => "this@mail.de",
        :isadmin => false,
        :password => "Password Digest"
      ),
      User.create!(
        :username => "user",
        :email => "that@mail.de",
        :isadmin => false,
        :password => "Password Digest"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "user".to_s, :count => 2
    assert_select "tr>td", :text => "that@mail.de".to_s, :count => 1
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 0
  end
end
