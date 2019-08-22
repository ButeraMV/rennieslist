require 'rails_helper'

RSpec.describe 'As a visitor' do
  let(:user) { create(:user) }

  it 'I can create an account' do
    visit '/'
    click_link 'Register'

    fill_in 'user[username]', with: 'username123'
    fill_in 'user[email]', with: 'email@email.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    click_button 'Sign up'

    expect(page).to have_content('Logout')
    expect(page).to have_content('username123')
    expect(page).to_not have_content('Register')
    expect(page).to_not have_content('Login')
  end
end