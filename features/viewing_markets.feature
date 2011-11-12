Feature: Viewing markets
	In order to assign feature articles to a market
	As a user
	I want to be able to see a list of markets
	
	Scenario: Listing all markets
		Given there is a market called "Atlanta"
		And I am on the homepage
		When I follow "Atlanta"
		Then I should be on the market page for "Atlanta"