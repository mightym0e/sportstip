describe "creating a new user", type: :feature do
  before :each do
    @email = "newadmin@admin.de"
    User.create(
      username: "admin1",
      password: "admin1",
      email: @email,
      isadmin: true
    )
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
      fill_in 'username', with: 'newtestadmin'
      fill_in 'password', with: 'newtestadmin'
      fill_in 'email', with: 'newtestadmin@admin.de'
      click_button 'Create User'
    end.to change{User.count}.by(1)
  end
end
