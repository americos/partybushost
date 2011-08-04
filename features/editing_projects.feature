Feature: Editing Partyevents
	In order to update a partyevent information
	As a user
	I want to be able to do that through an interface
	
	Background:
		Given there are the following users:
			| email				| password			| admin |
			| admin@mail.com	| password			| true  |
		And I am signed in as them
		Given there is a partyevent called "TextMate 2"
		And I am on the homepage
		When I follow "TextMate 2"
		And I follow "Edit Partyevent"
		
	
	Scenario: Updating a partyevent
		And I fill in "Name" with "TextMate 2 beta"
		And I press "Update Partyevent"
		Then I should see "Partyevent has been updated."
		Then I should be on the partyevent page for "TextMate 2 beta"
		
	Scenario: Updating a partyevent with invalid attributes its bad!
		And I fill in "Name" with ""
		And I press "Update Partyevent"
		Then I should see "Partyevent has not been updated."