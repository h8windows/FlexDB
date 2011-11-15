Feature: Viewing markets
	In order to assign feature articles to a market
	As a user
	I want to be able to see a list of markets
	
	Background:
		Given there are the following users:
		| email            | password |
		| user@example.com | password |
		And I am signed in as them
		And there is a market called "Atlanta"
		And there is a market called "Boston"
		And "user@example.com" can view the "Atlanta" market
	
	Scenario: Listing all markets
		And I am on the homepage
		Then I should not see "Boston"
		When I follow "Atlanta"
		Then I should be on the market page for "Atlanta"