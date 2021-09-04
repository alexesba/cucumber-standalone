# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.javascript_driver = :chrome
Capybara.app_host = 'https://www.google.com/?hl=en'

World(Capybara)
