describe "the signin process", :type => :feature do
  before :each do
    @email = 'admin@admin.de'
    @password = 'admin'
    User.create(
      username: 'admin',
      password: @password,
      email: @email,
      isadmin: true
    )
  end

  it 'signs me in' do
    visit login_path
    fill_in 'email', :with => @email
    fill_in 'password', :with => @password
    click_button 'Log In'
    expect(page).to have_content 'Logged in as ' + @email
  end
end
