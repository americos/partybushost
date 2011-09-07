Feature: Creating Partydetails
	In order to create Partydetails for a Partyevent
	As a user
	I want to be able to select a PartyEvent and do that
	
	Background:
		Given there is a partyevent called "TextMate 2"
		And there are the following users:
		| email			| password	|
		| user@mail.com	| password	|
		And "user@mail.com" can view the "TextMate 2" partyevent
		And I am signed in as them
		And I am on the homepage
		When I follow "TextMate 2"
		And I follow "New Partydetail"
		
	Scenario: Creating a Partydetail
		When I fill in "Title" with "this is the title"
		And I fill in "Description" with "this is the description"
		And I press "Create Partydetail"
		Then I should see "Partydetail has been created."
		Then I should see "Created by user@mail.com"
		
	Scenario: Creating a Partydetail without valid attributes fails
		When I press "Create Partydetail"
		Then I should see "Partydetail has not been created."
		And I should see "Title can't be blank"
		And I should see "Description can't be blank"
		
	Scenario: Description must be longer than 10 characters
		When I fill in "Title" with "This is the title"
		And I fill in "Description" with "123456789"
		And I press "Create Partydetail"
		Then I should see "Partydetail has not been created."
		And I should see "Description is too short (minimum is 10 characters)"