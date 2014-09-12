require 'spec_helper'

feature 'Add a new team' do
  scenario 'with a string name' do
    visit dashboard_path
    user = FactoryGirl.create(:user)
    fill_in 'Team name', with: 'My team'
    click_button 'Add Team'
  end
end

