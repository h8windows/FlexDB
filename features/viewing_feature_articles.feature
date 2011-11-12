Feature: Viewing feature articles
	In order to view the feature for a market
	As a user
	I want to see them on that market's page
	
	Background:
		Given there is a market called "Atlanta"
		And that market has a feature:
			| title                 | content                       |
			| Dining Alfresco       | Patios with pizzaz            |
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
		And I should not see "dining Alfresco"
		When I follow "Shopping with Bags"
		Then I should see "Shopping with Bags" within "#feature h2"
		And I should see "Big bags hold more stuff"