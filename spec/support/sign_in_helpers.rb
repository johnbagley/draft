module SignInHelpers
  def sign_in
    visit root_path
    click_link 'Sign Up'
    fill_in 'Email', with: 'jdbagley@gmail.com'
    fill_in 'Password', with: 'wombat'
    click_button 'Sign up'
    expect(page).to have_css '.welcome'
  end
end

RSpec.configure do |config|
  config.include SignInHelpers
end
