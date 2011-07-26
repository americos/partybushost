Feature: Viewing Partydetails
	In order to view the partydetails for a partyevent
	As a user
	I want to see them on the partyevent's page
	
	Background:
		Given there is a partyevent called "First Party"
		And that partyevent has a partydetail:
			| title				| description				|
			| Americo Party		| Party of Americo Savinon	|
		And there is a partyevent called "Another Party"
		And that partyevent has a partydetail:
			| title				| description				|
			| Autumn Party		| Party of Autumn			|
		And I am on the homepage
	
	Scenario: Viewing Partydetails for a given Partyevent
		When I follow "First Party"
		Then I should see "Americo Party"
		And I should not see "Autumn Party"
		When I follow "Americo Party"
		Then I should see "Americo Party" within "#partydetail h2"
		And I should see "Party of Americo Savinon"
		
		When I follow "Partybushost"
		And I follow "Another Party"
		Then I should see "Autumn Party"
		And I should not see "Americo Party"
		When I follow "Autumn Party"
		Then I should see "Autumn Party" within "#partydetail h2"
		And I should see "Party of Autumn"
		
		