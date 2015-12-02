require 'rails_helper'

feature 'User search games' do
  scenario 'search game Alaska dogs' do
    visit games_path

    fill_in 'search', with: 'Alaska dogs'
    click_button 'Search'

    expect(page).to_not have_content('Alaska sheep')
  end
end
