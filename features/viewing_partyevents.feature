Feature: Viewing Partyevents
	In order to assign partydetails to a partyevent
	As a user
	I want to be able to see a list of available partyevents
	
	Scenario: Listing all projects
		Given there is a partyevent called "TextMate 2"
		And I am on the homepage
		When I follow "TextMate 2"
		Then I should be on the partyevent page for "TextMate 2"