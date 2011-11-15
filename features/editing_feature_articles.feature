Feature: Editing feature articles
	In order to alter features
	As a user
	I want a form to edit the feature
	
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
		And I am on the homepage
		When I follow "Atlanta"
		And I follow "Dining Alfresco"
		When I follow "Edit Feature"
			
	Scenario: Updating a feature
		When I fill in "Title" with "Dancing Inside"
		And I press "Update Feature"
		Then I should see "Feature has been updated."
		And I should see "Dancing Inside" within "#feature h2"
		But I should not see "Dining Alfresco"
			
	Scenario: Updating a feature with invalid information
		When I fill in "Title" with ""
		And I press "Update Feature"
		Then I should see "Feature has not been updated."