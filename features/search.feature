@javascript
Feature: Search
  In order to find pages on the web
  As an information seeker
  I want to be able to search using keywords

  Scenario: Search for cucumber
    Given I am on the home page
    And I have entered "cucumber bdd" into the "q" field
    When I click on "Google Search"
    Then I should see "Cucumber: BDD Testing & Collaboration Tools for Teams"
