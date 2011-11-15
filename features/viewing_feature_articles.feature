Feature: Viewing feature articles
	In order to view the feature for a market
	As a user
	I want to see them on that market's page
	
	Background:
		Given there are the following users:
			| email              | password |
			| user@example.com   | password |
		And there is a market called "Atlanta"
		And "user@example.com" can view the "Atlanta" market
		And I am signed in as them
		And "user@example.com" has created a feature for this market:
			| title                 | content                       |
			| Dining Alfresco       | Patios with pizzaz            |
		And there is a market called "Boston"
		And "user@example.com" can view the "Boston" market
		And "user@example.com" has created a feature for this market:
			| title                 | content                       |
			| Shopping with Bags    | Big bags hold more stuff      |
		And I am on the homepage
		
	Scenario: Viewing feature for a given market
		When I follow "Atlanta"
		Then I should see "Dining Alfresco"
		And I should not see "Shopping with Bags"
		When I follow "Dining Alfresco"
		Then I should see "Dining Alfresco" within "#feature h2"
		And I should see "Patios with pizzaz"
		
		When I follow "FlexDB"
		And I follow "Boston"
		Then I should see "Shopping with Bags"
		And I should not see "Dining Alfresco"
		When I follow "Shopping with Bags"
		Then I should see "Shopping with Bags" within "#feature h2"
		And I should see "Big bags hold more stuff"