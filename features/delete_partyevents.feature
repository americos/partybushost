Feature: Deleting Partyevents
	In order to remove partyevents 
	As a project managaer
	I want to make them dissapear
	
	Scenario: Deleting a partyevent
		Given there is a partyevent called "TextMate 2"
		And I am on the homepage
		When I follow "TextMate 2"
		And I follow "Delete Partyevent"
		Then I should see "Partyevent has been deleted."
		Then I should not see "TextMate 2"