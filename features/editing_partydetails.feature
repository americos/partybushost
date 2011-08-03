Feature: Editing Partydetails
	In order to alter a partydetail
	As a user
	I want a form to edit the partydetails
	
	Background:
		Given there are the following users:
			| email				| password					|
			| user@mail.com		| password					|
		And I am signed in as them
		Given there is a partyevent called "First Party"
		And "user@mail.com" has created a partydetail for this partyevent:
			| title				| description				|
			| Americo Party		| Party of Americo Savinon	|
		Given I am on the homepage
		When I follow "First Party"
		And I follow "Americo Party"
		When I follow "Edit Partydetail"
		
	Scenario: Updating a Partydetail
		When I fill in "Title" with "Update for this partydetail"
		And I press "Update Partydetail"
		Then I should see "Partydetail has been updated."
		And I should see "Update for this partydetail" within "#partydetail h2"
		But I should not see "Americo Party"
	
	Scenario: Updating a Partydetail with invalid info
		When I fill in "Title" with ""
		And I press "Update Partydetail"
		Then I should see "Partydetail has not been updated."