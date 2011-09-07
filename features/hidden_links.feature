Feature: Hidden Links
	In order to clean up the user experience
	As the system
	I want to hide the links from users who can't act on them
	
	Background:
		Given there are the following users:
			| email				| password	| admin	|
			| user@mail.com		| password	| false	|
			| admin@mail.com	| password	| true	|
		And there is a partyevent called "Americos Party"
		And "user@mail.com" can view the "Americos Party" partyevent
	
	Scenario: New Partyevent link is hidden for non-signed-in users
		Given I am on the homepage
		Then I should not see the "New Partyevent" link
	
	Scenario: New Partyevent link is hidden for signed-in users
		Given I am signed in as "user@mail.com"
		Then I should not see the "New Partyevent" link
		
	Scenario: New Partyevent link is shown to admins
		Given I am signed in as "admin@mail.com"
		Then I should see the "New Partyevent" link
		
	
	
	Scenario: Edit Partyevent link is hidden for signed-in users
		Given I am signed in as "user@mail.com"
		When I follow "Americos Party"
		Then I should not see the "Edit Partyevent" link
	
	Scenario: Edit Partyevent link is shown to admins
		Given I am signed in as "admin@mail.com"
		When I follow "Americos Party"
		Then I should see the "Edit Partyevent" link
		
	
	Scenario: Delete Partyevent link is hidden for signed-in users
		Given I am signed in as "user@mail.com"
		When I follow "Americos Party"
		Then I should not see the "Delete Partyevent" link
		
	Scenario: Delete Partyevent link is shown to admins
		Given I am signed in as "admin@mail.com"
		When I follow "Americos Party"
		Then I should see the "Delete Partyevent" link