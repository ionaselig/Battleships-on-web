Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering
		Given I am on the homepage
		When I follow "launch-name-input"
		Then I should see "What's your name?"
		When I fill "player" with "Jeremy"
		When I press "Go!"
		Then I should see "Battleships Initializing..."

	Scenario: Registering Error
		Given I am on the homepage
		When I follow "launch-name-input"
		Then I should see "What's your name?"
		When I fill "player" with ""
		When I press "Go!"
		Then I should stay the name_input page