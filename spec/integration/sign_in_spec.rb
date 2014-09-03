require 'spec_helper'

feature 'Sign in as user' do
  scenario 'with an email address' do
    visit root_path
    click_link 'Sign Up'
    fill_in 'Email', with: 'jdbagley@gmail.com'
    fill_in 'Password', with: 'wombat'
    click_button 'Sign up'
    expect(page).to have_css '.welcome'
  end
end
