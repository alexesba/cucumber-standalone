# Standalone Cucumber Test Suite

## Introduction

Sometimes you inherit a non Rails or non Rack based web app such as PHP, Perl, Java / J2EE, etc. I like using cucumber for functional testing so I put together this project structure to use as a starting point for testing non-Ruby web-based applications.

I've included a simple search.feature example that uses Google. To switch to use your own development or staging server, adjust the URL in features/support/env.rb. This example project setup uses Capybara with Webdriver (Selenium) but you can easily switch this to use Culerity or Webrat by editing features/support/env.rb.


## Project Layout

* features/*.feature : cucumber features
* features/step_definitions/web_steps.rb : generic steps that apply to all features
* features/step_definitions/[feature]_steps.rb : steps specific to an individual feature file
* features/support/env.rb : configures the driver and the hostname to use

## Prerequisites

* Ruby http://www.ruby-lang.org/en/downloads/
* Ruby Gems http://rubygems.org/
* Bundler: sudo gem install bundler rake

##  Configuration

* sudo bundle install

## Running Features

* To run all features: rake
* To run a specific feature: cucumber features/search.feature

## Debugging

* To debug a specific step call save_and_open_page within the step

## Additional Documentation

* http://cukes.info (for general cucumber information)
* http://github.com/jnicklas/capybara (for actions such as click_link, click_button, etc...)
