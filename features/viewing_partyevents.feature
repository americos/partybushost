Feature: Viewing Partyevents
	In order to assign partydetails to a partyevent
	As a user
	I want to be able to see a list of available partyevents
	
	
	Background:
		Given there are the following users:
			| email				| password	|
			| user@mail.com	| password	|
		And I am signed in as them
		And there is a partyevent called "TextMate 2"
		And "user@mail.com" can view the "TextMate 2" partyevent
	
	Scenario: Listing all projects
		And I am on the homepage
		When I follow "TextMate 2"
		Then I should be on the partyevent page for "TextMate 2"