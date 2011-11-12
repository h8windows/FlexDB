Feature: Editing markets
	In order to change market names
	As a user
	I want to be able to do that through an interface
	
	Scenario: Editing markets
		Given there is a market called "Atlanta"
		And I am on the homepage
		When I follow "Atlanta"
		And I follow "Edit Market"
		And I fill in "Name" with "Boston"
		And I press "Update Market"
		Then I should see "Market has been updated."
		Then I should be on the market page for "Boston"