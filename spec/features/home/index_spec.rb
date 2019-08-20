require 'rails_helper'

RSpec.describe 'Homepage index' do
  it 'renders the homepage text' do
    visit '/'

    expect(page).to have_content('Welcome to the Rennielist')
    expect(page).to have_css('.jobs-button')
  end
end