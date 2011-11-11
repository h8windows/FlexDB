Feature: Creating markets
  In order to have markets to assign featured listings to
  As a user
  I want to create them easily
  
  Scenario: Creating a market
    Given I am on the homepage
    When I follow "New Market"
    And I fill in "Name" with "Atlanta"
    And I press "Create Market"
    Then I should see "Market has been created."