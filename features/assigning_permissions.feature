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
		And "user@example.com" has created a feature for this market:
		| title         | content      |
		| Shiny!        | Yes, it is!  |
		
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
		
	Scenario: Giving permission to create feature for a market
		When I check "View" for "Atlanta"
		When I check "Create features" for "Atlanta"
		And I press "Update"
		And I follow "Sign out"
		
		Given I am signed in as "user@example.com"
		When I follow "Atlanta"
		And I follow "New Feature Article"
		And I fill in "Title" with "Shiny!"
		And I fill in "Content" with "Make it so!"
		And I press "Create Feature"
		Then I should see "Feature article has been created."
		
	Scenario: Giving permission to edit feature for a market
		When I check "View" for "Atlanta"
		And I check "Edit features" for "Atlanta"
		And I press "Update"
		And I follow "Sign out"
		
		Given I am signed in as "user@example.com"
		When I follow "Atlanta"
		And I follow "Shiny!"
		And I follow "Edit Feature Article"
		And I fill in "Title" with "Really shiny!"
		And I press "Update Feature"
		Then I should see "Feature has been updated."