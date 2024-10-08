require 'capybara/rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.default_driver = :selenium
Capybara.app_host = 'http://localhost:3000'  # Adjust to your app's URL if necessary
