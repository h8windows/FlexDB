Feature: Hidden Links
	In order to clean up the user experience
	As the system
	I want to hide links from users who can't act on them
	
	Background:
		Given there are the following users:
		| email                    | password | admin |
		| user@example.com         | password | false |
		| admin@example.com        | password | true  |
		And there is a market called "Atlanta"
		And "user@example.com" has created a feature for this market:
		| title                  | content                  |
		| Dining Alfresco        | Patio Plates             |
		And "user@example.com" can view the "Atlanta" market
	
	Scenario: New market link is hidden for non-signed-in users
		Given I am on the homepage
		Then I should not see the "New Market" link
		
	Scenario: New market link is hidden for signed-in users
		Given I am signed in as "user@example.com"
		Then I should not see the "New Market" link
		
	Scenario: New market link is shown to admins
		Given I am signed in as "admin@example.com"
		Then I should see the "New Market" link
		
	Scenario: Edit market link is hidden for signed-in users
		Given I am signed in as "user@example.com"
		And I follow "Atlanta"
		Then I should not see the "Edit Market" link
		
	Scenario: Edit market link is shown to admins
		Given I am signed in as "admin@example.com"
		And I follow "Atlanta"
		Then I should see the "Edit Market" link
		
	Scenario: Delete market link is hidden for signed-in users
		Given I am signed in as "user@example.com"
		And I follow "Atlanta"
		Then I should not see the "Delete Market" link
		
	Scenario: Delete market link is shown to admins
		Given I am signed in as "admin@example.com"
		And I follow "Atlanta"
		Then I should see the "Delete Market" link
		
	Scenario: New feature link is shown to a user with permission
		Given "user@example.com" can view the "Atlanta" market
		And "user@example.com" can create features on the "Atlanta" market
		And I am signed in as "user@example.com"
		When I follow "Atlanta"
		Then I should see "New Feature Article"
		
	Scenario: New feature link is hidden from a user without permission
		Given "user@example.com" can view the "Atlanta" market
		And I am signed in as "user@example.com"
		When I follow "Atlanta"
		Then I should not see the "New Feature Article" link
	
	Scenario: New feature link is shown to admins
		Given I am signed in as "admin@example.com"
		When I follow "Atlanta"
		Then I should see the "New Feature Article" link
		
	Scenario: Edit feature link is shown to a user with permission
		Given "user@example.com" can view the "Atlanta" market
		And "user@example.com" can edit features on the "Atlanta" market
		And I am signed in as "user@example.com"
		When I follow "Atlanta"
		And I follow "Dining Alfresco"
		Then I should see the "Edit Feature Article" link

	Scenario: Edit feature link is hidden from a user without permission
		Given "user@example.com" can view the "Atlanta" market
		And I am signed in as "user@example.com"
		When I follow "Atlanta"
		And I follow "Dining Alfresco"
		Then I should not see the "Edit Feature Article" link

	Scenario: Edit feature link is shown to admins
		Given I am signed in as "admin@example.com"
		When I follow "Atlanta"
		And I follow "Dining Alfresco"
		Then I should see the "Edit Feature Article" link
