# frozen_string_literal: true

# require 'capybara/rspec'
# require 'spec_helper'
# require './app'
feature 'Homepage' do
  before(:each) {trauncate_test_db}
  scenario 'view home page' do
    visit '/'
    expect(page).to have_content 'Hello World'
  end

  scenario 'bookmarks page shows URLs' do
    visit '/bookmarks'
    expect(page).to have_content('https://www.infowars.com')
    expect(page).to have_content('https://www.facebook.com')
    expect(page).to have_content('https://www.google.com')
  end
end
