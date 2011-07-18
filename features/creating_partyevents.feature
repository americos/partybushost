Feature: Creating PartyEvents
	In order to have party events to assign to party details to it
	As a user
	I want to create them easily
	
	Background:
		Given I am on the homepage
		When I follow "New Partyevent"
	
	Scenario: Creating a Partyevent
		And I fill in "Name" with "TextMate 2"
		And I press "Create Partyevent"
		Then I should see "Partyevent has been created."
		And I should be on  the partyevent page for "TextMate 2"
		And I should see "TextMate 2 - Partyevents - Partydetail"
		
	Scenario: Creating a project without a name
		And I press "Create Partyevent"
		Then I should see "Partyevent has not been created."
		And I should see "Name can't be blank"