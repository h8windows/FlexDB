Feature: Assigning permissions
	In order to set up users with the correct permissions
	As an admin
	I want to check all the boxes
	
	Background:
		Given there are the following users:
		| email                 | password | admin | name  |
		| admin@example.com     | password | true  | Admin |
		And I am signed in as them
		
		And there are the following users:
		| email                 | password | name   |
		| user@example.com      | password | Joe    |
		And there is a market called "Atlanta"
		
		When I follow "Admin"
		And I follow "Users"
		And I follow "Joe"
		And I follow "Permissions"
		
	Scenario: Giving permission to view a market
		When I check "View" for "Atlanta"
		And I press "Update"
		And I follow "Sign out"
		
		Given I am signed in as "user@example.com"
		Then I should see "Atlanta"