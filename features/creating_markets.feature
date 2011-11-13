Feature: Creating markets
	In order to have markets to assign featured listings to
	As a user
	I want to create them easily
	
	Background:
		Given there are the following users:
		| email              | password | admin |
		| admin@example.com  | password | true  |
		And I am signed in as them
		Given I am on the homepage
		When I follow "New Market"
  
	Scenario: Creating a market
		And I fill in "Name" with "Atlanta"
		And I press "Create Market"
		Then I should see "Market has been created."
		And I should be on the market page for "Atlanta"
		And I should see "Atlanta - Markets - FlexDB"
	
	Scenario: Creating a market without a name
		And I press "Create Market"
		Then I should see "Market has not been created."
		And I should see "Name can't be blank"
