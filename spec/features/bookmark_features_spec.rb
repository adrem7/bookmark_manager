# require 'capybara/rspec'
# require 'spec_helper'
# require './app'
feature 'Homepage' do
  
  scenario 'view home page' do
    visit '/'
    expect(page).to have_content 'Hello World'  
  end

  scenario 'test for viewing bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'A bookmark'
  end

end