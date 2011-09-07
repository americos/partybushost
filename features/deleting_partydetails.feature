Feature: Deleting Partydetails
	In order to remove tickets
	As a user
	I want to press a button and make them disappear
	
	Background:
		Given there are the following users:
			| email				| password					|
			| user@mail.com		| password					|
		And I am signed in as them
		And there is a partyevent called "First Party"
		And "user@mail.com" can view the "First Party" partyevent
		And "user@mail.com" has created a partydetail for this partyevent:
			| title				| description				|
			| Americo Party		| Party of Americo Savinon	|
		Given I am on the homepage
		When I follow "First Party"
		And I follow "Americo Party"
		
		Scenario: Delete Partydetail
			When I follow "Delete Partydetail"
			Then I should see "Partydetail has been deleted."
			And I should be on the partyevent page for "First Party"