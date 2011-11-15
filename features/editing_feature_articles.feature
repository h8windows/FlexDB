Feature: Editing feature articles
	In order to alter features
	As a user
	I want a form to edit the feature
	
	Background:
		Given there is a market called "Atlanta"
		And that market has a feature:
			| title                 | content                       |
			| Dining Alfresco       | Patios with pizzaz            |
		Given I am on the homepage
		When I follow "Atlanta"
		And I follow "Dining Alfresco"
		When I follow "Edit Feature"
			
	Scenario: Updating a ticket
		When I fill in "Title" with "Dancing Inside"
		And I press "Update Feature"
		Then I should see "Feature has been updated."
		And I should see "Dancing Inside" within "#ticket h2"
		But I should not see "Dining Alfresco"
			
	Scenario: Updating a feature with invalid information
		When I fill in "Title" with ""
		And I press "Update Feature"
		Then I should see "Feature has not been updated."