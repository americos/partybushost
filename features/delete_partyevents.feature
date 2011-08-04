Feature: Deleting Partyevents
	In order to remove partyevents 
	As a project managaer
	I want to make them dissapear
	
	Background:
		Given there are the following users:
			| email				| password			| admin |
			| admin@mail.com	| password			| true  |
		And I am signed in as them
	
	Scenario: Deleting a partyevent
		Given there is a partyevent called "TextMate 2"
		And I am on the homepage
		When I follow "TextMate 2"
		And I follow "Delete Partyevent"
		Then I should see "Partyevent has been deleted."
		Then I should not see "TextMate 2"