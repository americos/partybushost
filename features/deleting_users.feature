Feature: Deleting users
	In order to remove users
	As an admin
	I want to click a button and delete them
	
	Background:
		Given there are the following users:
			| email				| password 		| admin	|
			| admin@mail.com	| password		| true	|
			| user@mail.com		| password		| false	|
		And I am signed in as "admin@mail.com"
		Given I am on the homepage
		When I follow "Admin"
		And I follow "Users"

	Scenario: Deleting a user
		And I follow "user@mail.com"
		When I follow "Delete User"
		Then I should see "User has been deleted"
		
	Scenario: A user cannot delete themselves
		When I follow "admin@mail.com"
		And I follow "Delete User"
		Then I should see "You cannot delete yourself!"