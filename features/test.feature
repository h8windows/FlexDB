Feature: Creating stuff

Scenario: Creating Stuff
	Given I am on the homepage
	When I follow "New Thing"
	Then I should see "Thing has been created!"