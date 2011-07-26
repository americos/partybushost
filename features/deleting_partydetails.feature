Feature: Deleting Partydetails
	In order to remove tickets
	As a user
	I want to press a button and make them disappear
	
	Background:
		Background:
			Given there is a partyevent called "First Party"
			And that partyevent has a partydetail:
				| title				| description				|
				| Americo Party		| Party of Americo Savinon	|
			Given I am on the homepage
			When I follow "First Party"
			And I follow "Americo Party"
			
		Scenario: Delete Partydetail
			When I follow "Delete Partydetail"
			Then I should see "Partydetail has been deleted."
			And I should be on the partyevent page for "First Party"