describe "creating a new user", type: :feature do
  before :each do
    @email = "newadmin@admin.de"
    @password = 'admin'
    User.create(
      username: "admin",
      password: @password,
      email: @email,
      isadmin: true
    )
    visit login_path
    fill_in 'email', :with => @email
    fill_in 'password', :with => @password
    click_button 'Log In'
  end

  it "overview shows the user" do
    visit users_path
    expect(page).to have_content @email
  end

  it "new button goes to new user page" do
    visit users_path
    #save_and_open_page
    click_link 'New'
    expect(page).to have_content "New User"
  end

  it "creates a new user" do
    expect do
      visit new_user_path
      fill_in 'user_username', with: 'newtestadmin'
      fill_in 'user_password', with: 'newtestadmin'
      fill_in 'user_email', with: 'newtestadmin@admin.de'
      click_button 'Update User'
    end.to change{User.count}.by(1)
  end
end
