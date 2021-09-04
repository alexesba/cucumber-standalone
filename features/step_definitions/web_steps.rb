# frozen_string_literal: true

Given /^I am on the home page$/ do
  visit('/ncr')
end

Given /^I have entered "([^"]*)" into the "([^"]*)" field$/ do |text, field|
  fill_in field, with: "#{text} \t"
end

Then /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end

When('I click on {string}') do |string|
  click_on(string)
end
