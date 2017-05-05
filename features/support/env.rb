require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara-webkit'
require 'pry'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome
Capybara.app_host   = 'http://www.google.com'

World(Capybara)
