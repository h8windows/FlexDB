Feature: Creating feature articles
	In order to create features for markets
	As a user
	I want to be able to select a market and do that
	
	Background:
		Given there is a market called "Atlanta"
		And there are the following users:
		| email            | password      | name     |
		| user@example.com | password      | BillyBob |
		And I am on the homepage
		When I follow "Atlanta"
		And I follow "New Feature Article"
		Then I should see "You need to sign in or sign up before continuing."
		When I fill in "Email" with "user@example.com"
		And I fill in "Password" with "password"
		And I press "Sign in"
		
	Scenario: Creating a feature article
		When I fill in "Title" with "Dining Alfresco"
		And I fill in "Content" with "Patios are the best places to eat"
		And I press "Create Feature"
		Then I should see "Feature article has been created."
		Then I should see "Author: BillyBob"
		
	Scenario: Creating a feature article without valid attributes fails
		When I press "Create Feature"
		Then I should see "Feature article has not been created."
		And I should see "Title can't be blank"
		And I should see "Content can't be blank"
		
	Scenario: Content must be longer than 10 characters
		When I fill in "Title" with "Dining Alfreso"
		And I fill in "Content" with "short"
		And I press "Create Feature"
		Then I should see "Feature article has not been created."
		And I should see "Content is too short"