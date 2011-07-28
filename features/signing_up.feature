Feature: Signing up
	In order use the Partybushost system
	As a user
	I want to be able to sign up
	
	Scenario: Signing up
		Given I am on the homepage
		When I follow "Sign up"
		And I fill in "Email" with "user@mail.com"
		And I fill in "Password" with "password"
		And I fill in "Password confirmation" with "password"
		And I press "Sign up"
		Then I should see "You have signed up successfully."
		
	Scenario: Signing in via confirmation
		Given there are the following users:
			| email					| password |
			| user@mail.com			| password |
		And "user@mail.com" opens the email with subject "Confirmation instructions"
		And they click the first link in the email
		Then I should see "Your account was successfully confirmed"
		And I should see "Signed in as user@mail.com"