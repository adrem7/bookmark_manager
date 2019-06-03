require './app.rb'
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
# require './spec/web_helpers.rb'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
Capybara.app = BookmarkManager

RSpec.configure do |config|
  config.after(:suite) do

  end
end