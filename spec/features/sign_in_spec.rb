describe "the signin process", :type => :feature do
  before :each do
    @email = 'admin@admin.de'
  end

  it 'signs me in' do
    visit login_path
    fill_in 'email', :with => @email
    fill_in 'password', :with => 'admin'
    click_button 'Log In'
    expect(page).to have_content 'Logged in as ' + @email
  end
end
