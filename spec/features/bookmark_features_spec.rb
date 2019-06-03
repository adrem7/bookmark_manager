# require 'capybara/rspec'
# require 'spec_helper'
# require './app'
feature 'Homepage' do
  
  scenario 'view home page' do
    visit '/'
    expect(page).to have_content 'Hello World'  
  end

end