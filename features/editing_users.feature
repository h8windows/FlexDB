Feature: Editing a user
	In order to change a user's details
	As an admin
	I want to be able to modify them through the backend
	
	Background:
		Given there are the following users:
		| email             | password | admin | name      |
		| admin@example.com | password | true  | Billybob  |
		And I am signed in as them
		
		Given there are the following users:
		| email             | password | name       |
		| user@example.com  | password | Billybob   |
		Given I am on the homepage
		When I follow "Admin"
		And I follow "Users"
		And I follow "Billybob"
		And I follow "Edit User"
		
	Scenario: Updating a user's details
		When I fill in "Email" with "newguy@example.com"
		And I press "Update User"
		Then I should see "User has been updated."
		And I should see "newguy@example.com"
		And I should not see "user@example.com"
		
	Scenario: Toggling a user's admin ability
		When I check "Is an admin?"
		And I press "Update User"
		Then I should see "User has been updated."
		And I should see "Billybob (Admin)"
		
	Scenario: Updating with an invalid email fails
		When I fill in "Email" with "fakefakefake"
		And I press "Update User"
		Then I should see "User has not been updated."
		And I should see "Email is invalid"