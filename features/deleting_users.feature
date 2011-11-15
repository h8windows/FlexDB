Feature: Deleting users
	In order to remove users
	As an admin
	I want to click a button and delete them
	
Background: 
	Given there are the following users:
	| email             | password | admin | name     |
	| admin@example.com | password | true  | Joe      |
	| user@example.com  | password | false | Bob      |
	And I am signed in as "admin@example.com"
	Given I am on the homepage
	When I follow "Admin"
	And I follow "Users"
	
Scenario: Deleting a user
	And I follow "Bob"
	When I follow "Delete User"
	Then I should see "User has been deleted."
	
Scenario: Users cannot delete themselves
	When I follow "Joe"
	And I follow "Delete User"
	Then I should see "You cannot delete yourself!"