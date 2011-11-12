Feature: Deleting markets
	In order to delete needless markets
	As an administrator
	I want to make them disappear
	
	Scenario: Deleting a market
		Given there is a market called "Atlanta"
		And I am on the homepage
		When I follow "Atlanta"
		And I follow "Delete Market"
		Then I should see "Market has been deleted."
		Then I should not see "Atlanta"