Feature: Creating PartyEvents
	In order to have party events to assign to party details to it
	As a user
	I want to create them easily
	
	Scenario: Creating a PartyEvent
		Given I am on the homepage
		When I follow "New PartyEvent"
		And I fill in "Name" with "TextMate 2"
		And I press "Create Partyevent"
		Then I should see "Partyevent has been created."